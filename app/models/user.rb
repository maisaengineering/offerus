class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :fname, :lname, :email, :password, :password_confirmation, :remember_me, :confirmed_at, :provider, :uid, :token, :image_url, :role, :confirmation_token, :confirmed_at, :confirmation_sent_at, :unconfirmed_email
  # attr_accessible :title, :body
  validates_presence_of :fname, :email  
  validates_presence_of :password, :on => :create  
  validates_presence_of :fname, :with => /^[-\w\._@]+$/i, :message => "should only contain letters, numbers, or .-_@"  
  validates_length_of :password, :minimum => 4
  validates_confirmation_of :password  

  def facebook
    FbGraph::User.new('me', :access_token => User.current_user.token).fetch
  end

  def fbauth
    self.authentications.find_by_provider('facebook')
  end
  
  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"]
      end
    end
  end
end

class Tribe < ActiveRecord::Base
  has_many :products
  attr_accessible :category, :location, :tribe_name
end

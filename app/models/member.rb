class Member < ActiveRecord::Base
  belongs_to :product_group
  attr_accessible :product_group_id, :status, :uid
end

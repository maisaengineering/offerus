class Product < ActiveRecord::Base
  belongs_to :tribe
  has_many :offers
  has_many :product_groups
  attr_accessible :product_name, :tribe_id
end

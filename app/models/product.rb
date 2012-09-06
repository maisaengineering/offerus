class Product < ActiveRecord::Base
  belongs_to :tribe
  attr_accessible :product_name, :tribe_id
end

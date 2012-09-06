class ProductGroup < ActiveRecord::Base
  belongs_to :product
  has_many :members
  attr_accessible :map_lat, :map_lng, :product_id, :zipcode
end

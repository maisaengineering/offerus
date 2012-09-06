class ProductGroup < ActiveRecord::Base
  belongs_to :product
  attr_accessible :map_lat, :map_lng, :product_id, :zipcode
end

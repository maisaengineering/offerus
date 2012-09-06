class Offer < ActiveRecord::Base
  belongs_to :product
  attr_accessible :min_no_of_price, :offer_price, :product_id, :retail_price, :size
end

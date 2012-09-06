class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :product_id
      t.string :offer_price
      t.string :retail_price
      t.string :size
      t.string :min_no_of_price

      t.timestamps
    end
  end
end

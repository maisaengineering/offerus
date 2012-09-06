class CreateProductGroups < ActiveRecord::Migration
  def change
    create_table :product_groups do |t|
      t.string :product_id
      t.string :zipcode
      t.string :map_lat
      t.string :map_lng

      t.timestamps
    end
  end
end

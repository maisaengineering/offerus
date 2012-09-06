class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :tribe_id

      t.timestamps
    end
  end
end

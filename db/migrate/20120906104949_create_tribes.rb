class CreateTribes < ActiveRecord::Migration
  def change
    create_table :tribes do |t|
      t.string :tribe_name
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end

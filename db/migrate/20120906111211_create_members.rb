class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :product_group_id
      t.string :uid
      t.string :status

      t.timestamps
    end
  end
end

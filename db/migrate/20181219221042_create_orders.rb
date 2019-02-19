class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.boolean :status
      t.string :delivery_type
      t.string :address
      t.integer :quantity_id
      t.integer :totalprice

      t.timestamps
    end
  end
end

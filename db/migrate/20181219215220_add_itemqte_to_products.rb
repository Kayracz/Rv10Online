class AddItemqteToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :Itemqte, :integer
  end
end

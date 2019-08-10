class AddItemToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :item, :string
  end
end

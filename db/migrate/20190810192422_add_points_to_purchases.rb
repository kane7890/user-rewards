class AddPointsToPurchases < ActiveRecord::Migration[5.2]
  def change
    add_column :purchases, :points_val, :integer
    add_column :purchases, :quantity, :integer
  end
end

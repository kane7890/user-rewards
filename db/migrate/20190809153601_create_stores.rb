class CreateStores < ActiveRecord::Migration[5.2]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :city
      t.string :state
      t.integer :point_value
      t.integer :genre_id

      t.timestamps
    end
  end
end

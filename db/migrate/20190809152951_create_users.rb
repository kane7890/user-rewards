class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :points
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end

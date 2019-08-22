class AddUidEmailImageToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :uid, :integer
    add_column :users, :email, :string
    add_column :users, :image, :string
  end
end

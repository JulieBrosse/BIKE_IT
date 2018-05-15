class AddAddressToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :address, :string
    add_column :bikes, :picture, :string
  end
end

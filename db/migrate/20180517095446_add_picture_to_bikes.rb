class AddPictureToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :picture, :string
  end
end

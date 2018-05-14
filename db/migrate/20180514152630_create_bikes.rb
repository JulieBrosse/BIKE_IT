class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.text :description
      t.string :title
      t.integer :price
      t.boolean :availability

      t.timestamps
    end
  end
end

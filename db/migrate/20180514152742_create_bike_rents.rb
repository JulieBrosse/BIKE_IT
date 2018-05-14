class CreateBikeRents < ActiveRecord::Migration[5.1]
  def change
    create_table :bike_rents do |t|
      t.date :booking_date
      t.references :renter, references: :users, index: true
      t.references :bike, foreign_key: true
      t.timestamps
    end
  end
end

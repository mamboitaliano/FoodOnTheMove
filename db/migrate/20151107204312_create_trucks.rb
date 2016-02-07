class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.integer :location
      t.string :applicant
      t.string :facility_type
      t.string :location_description
      t.integer :block
      t.integer :lot
      t.string :status
      t.string :food_items
      t.float :x
      t.float :y
      t.float :latitude
      t.float :longitude
      t.string :schedule
      t.string :address
      t.string :dayshours

      t.timestamps null: false
    end
  end
end


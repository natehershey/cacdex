class CreateCacti < ActiveRecord::Migration
  def change
    create_table :cacti do |t|
      t.string :common_name
      t.string :latin_name
      t.text :description
      t.text :notes
      t.date :planted_on
      t.string :image

      t.timestamps
    end
  end
end

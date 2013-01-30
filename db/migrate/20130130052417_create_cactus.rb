class CreateCactus < ActiveRecord::Migration
  def change
    create_table :cactus do |t|

      t.timestamps
    end
  end
end

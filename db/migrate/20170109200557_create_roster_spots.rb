class CreateRosterSpots < ActiveRecord::Migration[5.0]
  def change
    create_table :roster_spots do |t|
      t.belongs_to :team
      t.belongs_to :player
      t.integer :season
      t.timestamps
    end
  end
end

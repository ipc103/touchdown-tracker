class CreateTouchdowns < ActiveRecord::Migration[5.0]
  def change
    create_table :touchdowns do |t|
      t.string :rating
      t.string :video
      t.belongs_to :player
      t.timestamps
    end
  end
end

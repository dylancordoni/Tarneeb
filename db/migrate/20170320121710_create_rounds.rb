class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :tarneeb
      t.integer :player_id
      t.integer :game_id

      t.timestamps
    end
  end
end

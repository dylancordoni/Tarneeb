class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      #will be assigned when deck is created (every game)
      t.string :suit
      t.integer :value
      t.integer :deck_id

      #will be re-assigned every round
      t.integer :hand_id
      #will be re-assigned on set played and set after play
      t.integer :player_id

      t.timestamps
    end
  end
end

class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :suit
      t.integer :value
      t.integer :deck_id
      t.integer :player_id

      t.timestamps
    end
  end
end

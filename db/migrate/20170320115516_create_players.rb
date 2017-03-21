class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :position
      t.boolean :dealer, default: false
      t.boolean :starter, default: false
      t.integer :last_card_id

      t.timestamps
    end
  end
end

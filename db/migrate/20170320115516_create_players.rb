class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :position
      t.boolean :dealer, default: false

      t.timestamps
    end
  end
end

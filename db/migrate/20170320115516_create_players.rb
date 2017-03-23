class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      #user auth stuff
      t.string :email
      t.string :username
      t.string :password_hash

      #gameplay stuff
      t.integer :position
      t.boolean :dealer, default: false
      t.boolean :starter, default: false
      t.integer :last_card_id

      t.timestamps
    end
  end
end

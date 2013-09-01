class CreateCharacterMoves < ActiveRecord::Migration
  def change
    create_table :character_moves do |t|
      t.integer :character_id, null: false
      t.integer :move_id, null: false

      t.timestamps
    end
  end
end

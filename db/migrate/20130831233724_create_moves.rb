class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :frequency, null: false
      t.string :title, null: false
      t.text :description
      t.integer :character_class_id
      t.integer :number_of_dice
      t.integer :dice_type
      t.integer :range, null: false

      t.timestamps
    end
  end
end

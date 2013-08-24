class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :hp, null: false, default: 6
      t.integer :character_id, null: false

      t.timestamps
    end
  end
end

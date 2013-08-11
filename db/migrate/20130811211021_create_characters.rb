class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.integer :level, null: false, default: 1
      t.integer :experience, null: false, default: 0
      t.integer :user_id, null: false

      t.timestamps
    end
  end
end

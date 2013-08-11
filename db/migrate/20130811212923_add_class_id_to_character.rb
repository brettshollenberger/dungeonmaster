class AddClassIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :character_class_id, :integer, null: false
  end
end

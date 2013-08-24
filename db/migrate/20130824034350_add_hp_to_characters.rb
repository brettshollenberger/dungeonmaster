class AddHpToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :hp, :integer, null: false, default: 6
  end
end

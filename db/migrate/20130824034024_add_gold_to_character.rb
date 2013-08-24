class AddGoldToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :gold, :integer, null: false, default: 0
  end
end

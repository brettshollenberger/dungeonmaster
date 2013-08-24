class AddAttributesToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :strength, :integer, null: false, default: 0
    add_column :characters, :height, :integer, null: false
    add_column :characters, :weight, :integer, null: false
    add_column :characters, :luck, :integer, null: false, default: 0
    add_column :characters, :sex_appeal, :integer, null: false, default: 0
    add_column :characters, :intelligence, :integer, null: false, default: 0
  end
end

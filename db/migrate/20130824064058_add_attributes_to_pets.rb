class AddAttributesToPets < ActiveRecord::Migration
  def change
    add_column :pets, :strength, :integer, null: false, default: 0
    add_column :pets, :luck, :integer, null: false, default: 0
    add_column :pets, :intelligence, :integer, null: false, default: 0
    add_column :pets, :sex_appeal, :integer, null: false, default: 0
    add_column :pets, :experience, :integer, null: false, default: 0
    add_column :pets, :level, :integer, null: false, default: 1
  end
end

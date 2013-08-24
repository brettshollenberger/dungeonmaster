class RemoveLastNameRequirementFromPets < ActiveRecord::Migration
  def up
    change_column :pets, :last_name, :string, null: true
  end

  def down
    change_column :pets, :last_name, :string, null: false
  end
end

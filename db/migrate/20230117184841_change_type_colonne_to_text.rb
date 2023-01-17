class ChangeTypeColonneToText < ActiveRecord::Migration[7.0]
  def change
    change_column :spaceships, :description, :text
  end
end

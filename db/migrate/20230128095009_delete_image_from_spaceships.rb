class DeleteImageFromSpaceships < ActiveRecord::Migration[7.0]
  def change
    remove_column :spaceships, :image
  end
end

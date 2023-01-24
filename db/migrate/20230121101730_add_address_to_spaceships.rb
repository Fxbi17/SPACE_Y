class AddAddressToSpaceships < ActiveRecord::Migration[7.0]
  def change
    add_column :spaceships, :address, :string
  end
end

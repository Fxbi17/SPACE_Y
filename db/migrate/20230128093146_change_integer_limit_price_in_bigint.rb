class ChangeIntegerLimitPriceInBigint < ActiveRecord::Migration[7.0]
  def change
    change_column :spaceships, :price, :bigint
  end
end

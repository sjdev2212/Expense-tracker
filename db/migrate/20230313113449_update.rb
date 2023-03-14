class Update < ActiveRecord::Migration[7.0]
  def change
    change_column :expenses , :amount, :decimal, precision: 8, scale: 3
  end
end

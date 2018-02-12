class AddTotalColumnToCartsTable < ActiveRecord::Migration[5.1]
  def change
    add_column :carts, :total, :integer
  end
end

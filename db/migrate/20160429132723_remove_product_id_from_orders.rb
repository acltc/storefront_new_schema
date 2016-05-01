class RemoveProductIdFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :quantity, :integer
    remove_column :orders, :product_id, :integer
    add_column :orders, :completed, :boolean
  end
end

class Remove < ActiveRecord::Migration
  def change
    remove_column :carted_products, :removed, :boolean
  end
end

class CreateTacos < ActiveRecord::Migration
  def change
    create_table :tacos do |t|
      t.string :name
      t.string :price
      t.string :image
      t.string :description
      t.string :rating

      t.timestamps null: false
    end
  end
end

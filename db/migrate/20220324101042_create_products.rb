class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :discription
      t.string :quantity
      t.decimal :price
      t.decimal :discount
      t.string :image

      t.timestamps
    end
  end
end

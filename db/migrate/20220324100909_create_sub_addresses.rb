class CreateSubAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_addresses do |t|
      t.string :name
      t.integer :address_id

      t.timestamps
    end
  end
end

class AddColumnToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :sub_address_id, :integer
  end
end

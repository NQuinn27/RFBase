class AddCustomerIdToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :customer_id, :integer
  end
end

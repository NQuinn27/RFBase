class AddCustomerIdToCustomerAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :customer_admins, :customer_id, :integer
  end
end

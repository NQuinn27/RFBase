class AddNamesToCustomerAdmin < ActiveRecord::Migration[5.0]
  def change
    add_column :customer_admins, :first_name, :string
    add_column :customer_admins, :last_name, :string
  end
end

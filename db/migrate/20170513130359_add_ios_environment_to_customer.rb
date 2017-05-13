class AddIosEnvironmentToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :ios_environment, :string
  end
end

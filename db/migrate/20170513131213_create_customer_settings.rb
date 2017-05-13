class CreateCustomerSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_settings do |t|
      t.text :ios_push_cert
      t.string :ios_env

      t.timestamps
    end
  end
end

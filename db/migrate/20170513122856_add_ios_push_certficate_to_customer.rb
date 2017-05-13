class AddIosPushCertficateToCustomer < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :ios_push_cert, :text
  end
end

class CreateAppUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :app_users do |t|
      t.references :customer, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :device_token
      t.string :device_type
      t.string :push_token
      t.string :email
      t.datetime :signup_date
      t.datetime :last_login

      t.timestamps
    end
  end
end

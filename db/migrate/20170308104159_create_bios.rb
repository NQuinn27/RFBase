class CreateBios < ActiveRecord::Migration[5.0]
  def change
    create_table :bios do |t|
      t.string :photo
      t.string :name
      t.string :date_of_birth
      t.text :biography
      t.integer :customer_id
      t.string :facebook_url
      t.string :twitter_url
      t.string :instagram_url
      t.string :web_url

      t.timestamps
    end
    add_index :bios, :customer_id, unique: true
  end
end

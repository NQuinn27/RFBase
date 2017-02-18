class CreateMediaItems < ActiveRecord::Migration[5.0]
  def change
    create_table :media_items do |t|
      t.integer :customer_id

      t.timestamps
    end
  end
end

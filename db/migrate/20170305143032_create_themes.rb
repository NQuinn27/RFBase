class CreateThemes < ActiveRecord::Migration[5.0]
  def change
    create_table :themes do |t|
      t.string :primary_color
      t.string :primary_inverse_color
      t.string :primary_font_color
      t.string :secondary_font_color
      t.integer :customer_id

      t.timestamps
    end
    add_index :themes, :customer_id, unique: true
  end
end

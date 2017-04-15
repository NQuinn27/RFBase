class CreateCareerItems < ActiveRecord::Migration[5.0]
  def change
    create_table :career_items do |t|
      t.string :year
      t.text :details
      t.references :bio, foreign_key: true

      t.timestamps
    end
  end
end

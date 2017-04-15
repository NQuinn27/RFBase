class AddIconImageToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :icon_image, :string
  end
end

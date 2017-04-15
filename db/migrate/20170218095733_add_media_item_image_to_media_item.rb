class AddMediaItemImageToMediaItem < ActiveRecord::Migration[5.0]
  def change
    add_column :media_items, :image, :string
  end
end

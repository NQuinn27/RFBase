class AddCaptionToMediaItem < ActiveRecord::Migration[5.0]
  def change
    add_column :media_items, :caption, :string
  end
end

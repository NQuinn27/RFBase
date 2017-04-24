class AddLivesToBios < ActiveRecord::Migration[5.0]
  def change
    add_column :bios, :lives, :string
  end
end

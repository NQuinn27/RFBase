class ChangeDataTypeForBroadcastBody < ActiveRecord::Migration[5.0]
  def change
    change_table :broadcasts do |t|
      t.change :body, :text
    end
  end
end

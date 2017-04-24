class ChangeDateOfBirthTypeInBios < ActiveRecord::Migration[5.0]
  def change
    change_column :bios, :date_of_birth, 'date using cast(date_of_birth as date)'
  end
end

class AddSachRefToCtdhs < ActiveRecord::Migration[5.2]
  def change
    add_reference :ctdhs, :sach, foreign_key: true
  end
end

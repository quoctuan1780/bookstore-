class AddDonhangRefToCtdhs < ActiveRecord::Migration[5.2]
  def change
    add_reference :ctdhs, :donhang, foreign_key: true
  end
end

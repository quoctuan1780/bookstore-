class AddUserRefToKhachhangs < ActiveRecord::Migration[5.2]
  def change
    add_reference :khachhangs, :user, foreign_key: true
  end
end

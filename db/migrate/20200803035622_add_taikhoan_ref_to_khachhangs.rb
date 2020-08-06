class AddTaikhoanRefToKhachhangs < ActiveRecord::Migration[5.2]
  def change
    add_reference :khachhangs, :taikhoan, foreign_key: true
  end
end

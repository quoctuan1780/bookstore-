class AddKhachhangRefToDonhangs < ActiveRecord::Migration[5.2]
  def change
    add_reference :donhangs, :khachhang, foreign_key: true
  end
end

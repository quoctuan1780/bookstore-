class CreateKhachhangs < ActiveRecord::Migration[5.2]
  def change
    create_table :khachhangs do |t|
      t.string :tenkh
      t.string :diachi
      t.string :gioitinh
      t.string :sodt

      t.timestamps
    end
  end
end

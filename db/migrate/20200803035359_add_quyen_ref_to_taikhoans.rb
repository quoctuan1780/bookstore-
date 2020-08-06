class AddQuyenRefToTaikhoans < ActiveRecord::Migration[5.2]
  def change
    add_reference :taikhoans, :quyen, foreign_key: true
  end
end

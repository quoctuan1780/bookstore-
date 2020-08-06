class AddQuyenRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :quyen, foreign_key: true
  end
end

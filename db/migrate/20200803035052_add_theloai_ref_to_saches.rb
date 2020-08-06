class AddTheloaiRefToSaches < ActiveRecord::Migration[5.2]
  def change
    add_reference :saches, :theloai, foreign_key: true
  end
end

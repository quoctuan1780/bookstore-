class AddHtttToDonhangs < ActiveRecord::Migration[5.2]
  def change
    add_column :donhangs, :httt, :string
  end
end

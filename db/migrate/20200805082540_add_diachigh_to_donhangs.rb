class AddDiachighToDonhangs < ActiveRecord::Migration[5.2]
  def change
    add_column :donhangs, :diachigh, :string
  end
end

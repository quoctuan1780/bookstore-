class CreateCtdhs < ActiveRecord::Migration[5.2]
  def change
    create_table :ctdhs do |t|
      t.integer :Soluong
      t.integer :dongia

      t.timestamps
    end
  end
end

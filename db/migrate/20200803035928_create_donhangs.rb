class CreateDonhangs < ActiveRecord::Migration[5.2]
  def change
    create_table :donhangs do |t|
      t.date :ngaylap
      t.integer :tongtien

      t.timestamps
    end
  end
end

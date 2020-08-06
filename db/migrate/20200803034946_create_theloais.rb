class CreateTheloais < ActiveRecord::Migration[5.2]
  def change
    create_table :theloais do |t|
      t.string :tentl

      t.timestamps
    end
  end
end

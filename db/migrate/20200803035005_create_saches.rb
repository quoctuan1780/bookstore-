class CreateSaches < ActiveRecord::Migration[5.2]
  def change
    create_table :saches do |t|
      t.string :tensach
      t.string :mota
      t.integer :giaban
      t.string :hinhanh

      t.timestamps
    end
  end
end

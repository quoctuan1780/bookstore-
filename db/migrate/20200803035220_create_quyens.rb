class CreateQuyens < ActiveRecord::Migration[5.2]
  def change
    create_table :quyens do |t|
      t.string :tenquyen

      t.timestamps
    end
  end
end

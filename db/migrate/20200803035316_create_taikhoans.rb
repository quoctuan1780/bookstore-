class CreateTaikhoans < ActiveRecord::Migration[5.2]
  def change
    create_table :taikhoans do |t|
      t.string :tentk
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

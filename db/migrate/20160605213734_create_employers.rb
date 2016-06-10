class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :user_id
      t.string :personalidad
      t.string :first_name
      t.string :last_name
      t.string :nombre_empresa
      t.string :rut
      t.string :calle
      t.string :num
      t.string :comuna
      t.string :region

      t.timestamps

    end
  end
end

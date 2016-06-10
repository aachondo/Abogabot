class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :user_id
      t.string :first_name
      t.string :last_name
      t.string :rut
      t.string :nationality
      t.date :dob
      t.string :calle
      t.string :num
      t.string :comuna
      t.string :region
      t.string :salud
      t.string :afp

      t.timestamps

    end
  end
end

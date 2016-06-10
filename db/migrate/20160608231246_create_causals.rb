class CreateCausals < ActiveRecord::Migration
  def change
    create_table :causals do |t|
      t.text :des
      t.text :inciso
      t.text :articulo

      t.timestamps

    end
  end
end

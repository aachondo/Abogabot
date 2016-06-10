class CreateTerminacionContratos < ActiveRecord::Migration
  def change
    create_table :terminacion_contratos do |t|
      t.text :hechos
      t.integer :causal_id
      t.date :fecha_termino
      t.integer :employer_id
      t.integer :employee_id

      t.timestamps

    end
  end
end

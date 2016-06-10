class CreatePlazoFijoContratos < ActiveRecord::Migration
  def change
    create_table :plazo_fijo_contratos do |t|
      t.integer :tipo
      t.integer :n_ejemplares
      t.date :fecha_fin
      t.date :fecha_inicio
      t.integer :sueldo
      t.time :afternoon_end
      t.time :afternoon_start
      t.time :morning_end
      t.time :morning_start
      t.integer :horas_semanales
      t.date :trabajo_de
      t.date :fecha_firma
      t.integer :lugar
      t.integer :employer_id
      t.integer :employee_id

      t.timestamps

    end
  end
end

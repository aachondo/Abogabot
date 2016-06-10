class Add2ToTerminacionContrato < ActiveRecord::Migration
  def change

        add_column :terminacion_contratos, :review, :string
        add_column :terminacion_contratos, :sent, :string
        add_column :terminacion_contratos, :tipo, :string
  end
end

class AddVarsToPlazoFijoContratos < ActiveRecord::Migration
  def change

    change_column :plazo_fijo_contratos, :lugar, :string
    change_column :plazo_fijo_contratos, :trabajo_de, :string
    add_column :plazo_fijo_contratos, :dia_inicio, :string
    add_column :plazo_fijo_contratos, :dia_fin, :string
    add_column :plazo_fijo_contratos, :sent, :string
  end
end

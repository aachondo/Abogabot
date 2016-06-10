class ChangeTipoInContratoPlazoFijo < ActiveRecord::Migration
  def change

        change_column :plazo_fijo_contratos, :tipo, :string
  end
end

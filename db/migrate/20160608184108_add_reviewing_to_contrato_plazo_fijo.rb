class AddReviewingToContratoPlazoFijo < ActiveRecord::Migration
  def change

    add_column :plazo_fijo_contratos, :review, :string
  end
end

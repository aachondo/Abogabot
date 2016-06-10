class HomesController < ApplicationController

  def index
    @contratos = PlazoFijoContrato.all + TerminacionContrato.all
    @contratos = @contratos.sort_by(&:updated_at).reverse
    render 'index'
  end
end

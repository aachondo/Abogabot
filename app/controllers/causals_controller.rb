class CausalsController < ApplicationController
  def index
    @causals = Causal.all
  end

  def show
    @causal = Causal.find(params[:id])
    if @causal.user_id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
  end

  def new
    @causal = Causal.new
  end

  def create
    @causal = Causal.new
    @causal.user_id = params[:user_id]
    if @causal.user_id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @causal.des = params[:des]
    @causal.inciso = params[:inciso]
    @causal.articulo = params[:articulo]

    if @causal.save
      redirect_to "/causals", :notice => "Causal creada."
    else
      render 'new'
    end
  end

  def edit
    @causal = Causal.find(params[:id])
    if @causal.user_id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
  end

  def update
    @causal = Causal.find(params[:id])

    @causal.user_id = params[:user_id]
    if @causal.user_id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @causal.des = params[:des]
    @causal.inciso = params[:inciso]
    @causal.articulo = params[:articulo]

    if @causal.save
      redirect_to "/causals", :notice => "Causal actualizada."
    else
      render 'edit'
    end
  end

  def destroy
    @causal = Causal.find(params[:id])
    if @causal.user_id == current_user.id
          @causal.destroy

          redirect_to "/employees", :notice => "Empleado borrado"
    else
      redirect_to "/employee", :alert => "Ésta causal no es tuya!"
    end
    @causal.destroy

    redirect_to "/causals", :notice => "Causal borrada."
  end
end

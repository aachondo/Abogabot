class PlazoFijoContratosController < ApplicationController

  def desent
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.sent = "NO"
    @plazo_fijo_contrato.save
    redirect_to "/"
  end

  def sent
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.sent = "YES"
    @plazo_fijo_contrato.save
    redirect_to "/"
  end

  def dereview
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.review = "NO"
    @plazo_fijo_contrato.save

  end

  def review
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.review = "YES"
    @plazo_fijo_contrato.save
    redirect_to "/plazo_fijo_contratos"
  end




  def dereview
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.review = "NO"
    @plazo_fijo_contrato.save
    redirect_to :back
  end

  def review
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.review = "YES"
    @plazo_fijo_contrato.save
    redirect_to :back
  end

  def index
    @plazo_fijo_contratos = PlazoFijoContrato.all
  end

  def show
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to "/plazo_fijo_contratos", :alert => "Acción no autorizada"
    end
  end

  def new
    @plazo_fijo_contrato = PlazoFijoContrato.new
    @employees = Employee.all
    @employers = Employer.all
  end

  def create
    @plazo_fijo_contrato = PlazoFijoContrato.new
    @plazo_fijo_contrato.employer_id = params[:employer_id]
    @plazo_fijo_contrato.employee_id = params[:employee_id]
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to "/plazo_fijo_contratos", :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.tipo = params[:tipo]
    @plazo_fijo_contrato.n_ejemplares = params[:n_ejemplares]
    @plazo_fijo_contrato.fecha_fin = params[:fecha_fin]
    @plazo_fijo_contrato.fecha_inicio = params[:fecha_inicio]
    @plazo_fijo_contrato.sueldo = params[:sueldo]
    @plazo_fijo_contrato.afternoon_end = params[:afternoon_end]
    @plazo_fijo_contrato.afternoon_start = params[:afternoon_start]
    @plazo_fijo_contrato.morning_end = params[:morning_end]
    @plazo_fijo_contrato.morning_start = params[:morning_start]
    @plazo_fijo_contrato.horas_semanales = params[:horas_semanales]
    @plazo_fijo_contrato.trabajo_de = params[:trabajo_de]
    @plazo_fijo_contrato.fecha_firma = params[:fecha_firma]
    @plazo_fijo_contrato.lugar = params[:lugar]
    @plazo_fijo_contrato.dia_inicio = params[:dia_inicio]
    @plazo_fijo_contrato.dia_fin = params[:dia_fin]
    @plazo_fijo_contrato.review = params[:review]
    @plazo_fijo_contrato.sent = params[:sent]
    if @plazo_fijo_contrato.save
      redirect_to "/plazo_fijo_contratos", :notice => "Contrato Generado."
    else
      render 'new'
    end
  end

  def edit
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    @employees = Employee.all
    @employers = Employer.all
  end

  def update
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    @plazo_fijo_contrato.employer_id = params[:employer_id]
    @plazo_fijo_contrato.employee_id = params[:employee_id]
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to "/plazo_fijo_contratos", :alert => "Acción no autorizada"
    end
    @plazo_fijo_contrato.n_ejemplares = params[:n_ejemplares]
    @plazo_fijo_contrato.fecha_fin = params[:fecha_fin]
    @plazo_fijo_contrato.fecha_inicio = params[:fecha_inicio]
    @plazo_fijo_contrato.sueldo = params[:sueldo]
    @plazo_fijo_contrato.afternoon_end = params[:afternoon_end]
    @plazo_fijo_contrato.afternoon_start = params[:afternoon_start]
    @plazo_fijo_contrato.morning_end = params[:morning_end]
    @plazo_fijo_contrato.morning_start = params[:morning_start]
    @plazo_fijo_contrato.horas_semanales = params[:horas_semanales]
    @plazo_fijo_contrato.trabajo_de = params[:trabajo_de]
    @plazo_fijo_contrato.fecha_firma = params[:fecha_firma]
    @plazo_fijo_contrato.lugar = params[:lugar]
    @plazo_fijo_contrato.dia_inicio = params[:dia_inicio]
    @plazo_fijo_contrato.dia_fin = params[:dia_fin]
    @plazo_fijo_contrato.trabajo_de = params[:trabajo_de]
    @plazo_fijo_contrato.tipo = params[:tipo]

    if @plazo_fijo_contrato.save
      redirect_to "/plazo_fijo_contratos", :notice => "Contrato Modificado."
    else
      render 'edit'
    end
  end

  def destroy
    @plazo_fijo_contrato = PlazoFijoContrato.find(params[:id])
    if @plazo_fijo_contrato.employee.user.id == current_user.id
    else
      redirect_to "/plazo_fijo_contratos", :alert => "Acción no autorizada"
    end

    @plazo_fijo_contrato.destroy

    redirect_to "/plazo_fijo_contratos", :notice => "Contrato Eliminado."
  end
end

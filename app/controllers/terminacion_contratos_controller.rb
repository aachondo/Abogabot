class TerminacionContratosController < ApplicationController

  def desent
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @terminacion_contrato.sent = "NO"
    @terminacion_contrato.save
    redirect_to "/"
  end

  def sent
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @terminacion_contrato.sent = "YES"
    @terminacion_contrato.save
    redirect_to "/"
  end


  def dereview
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @terminacion_contrato.review = "NO"
    @terminacion_contrato.save
    redirect_to :back
  end

  def review
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @terminacion_contrato.review = "YES"
    @terminacion_contrato.save
    redirect_to :back
  end



  def index
    @terminacion_contratos = TerminacionContrato.all
  end

  def show
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
  end

  def new
    @terminacion_contrato = TerminacionContrato.new
    @employees = Employee.all
    @employers = Employer.all
    @causals = Causal.all
  end

  def create
    @terminacion_contrato = TerminacionContrato.new
    @terminacion_contrato.employer_id = params[:employer_id]
    @terminacion_contrato.employee_id = params[:employee_id]
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    @terminacion_contrato.hechos = params[:hechos]
    @terminacion_contrato.causal_id = params[:causal_id]
    @terminacion_contrato.fecha_termino = params[:fecha_termino]
    @terminacion_contrato.tipo = params[:tipo]
    @terminacion_contrato.review = "NO"
    @terminacion_contrato.sent = "NO"

    if @terminacion_contrato.save
      redirect_to "/terminacion_contratos", :notice => "Terminación de contrato creada."
    else
      render 'new'
    end
  end

  def edit
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    @employees = Employee.all
    @employers = Employer.all
    @causals = Causal.all
  end

  def update
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    @terminacion_contrato.employer_id = params[:employer_id]
    @terminacion_contrato.employee_id = params[:employee_id]

    @terminacion_contrato.hechos = params[:hechos]
    @terminacion_contrato.causal_id = params[:causal_id]
    @terminacion_contrato.fecha_termino = params[:fecha_termino]

    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end

    if @terminacion_contrato.save
      redirect_to "/terminacion_contratos", :notice => "Terminación de contrato actualizada."
    else
      render 'edit'
    end
  end

  def destroy
    @terminacion_contrato = TerminacionContrato.find(params[:id])
    if @terminacion_contrato.employer.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end
    if @terminacion_contrato.employee.user.id == current_user.id
    else
      redirect_to :back, :alert => "Acción no autorizada"
    end

    @terminacion_contrato.destroy

    redirect_to "/terminacion_contratos", :notice => "Terminación de contrato borrada."
  end
end

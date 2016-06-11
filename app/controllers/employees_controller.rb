class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
    if @employee.user_id == current_user.id
    else
      redirect_to "/employees", :alert => "Acción no autorizada"
    end
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new
    @employee.user_id = params[:user_id]
    if @employee.user_id == current_user.id
    else
      redirect_to "/employees", :alert => "Acción no autorizada"
    end
    @employee.first_name = params[:first_name]
    @employee.last_name = params[:last_name]
    @employee.rut = params[:rut]
    @employee.num = params[:num]
    @employee.nationality = params[:nationality]
    @employee.dob = params[:dob]
    @employee.calle = params[:calle]
    @employee.comuna = params[:comuna]
    @employee.region = params[:region]
    @employee.salud = params[:salud]
    @employee.afp = params[:afp]

    if @employee.save
      redirect_to "/employees", :notice => "Empleado creado"
    else
      render 'new'
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    if @employee.user_id == current_user.id
    else
      redirect_to "/employee", :alert => "Acción no autorizada"
    end
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.user_id = params[:user_id]
    if @employee.user_id == current_user.id
    else
      redirect_to "/employee", :alert => "Acción no autorizada"
    end
    @employee.first_name = params[:first_name]
    @employee.last_name = params[:last_name]
    @employee.rut = params[:rut]
    @employee.nationality = params[:nationality]
    @employee.dob = params[:dob]
    @employee.calle = params[:calle]
    @employee.comuna = params[:comuna]
    @employee.region = params[:region]
    @employee.salud = params[:salud]
    @employee.afp = params[:afp]
    @employee.num = params[:num]

    if @employee.save
      redirect_to "/employees", :notice => "Empleado modificado"
    else
      render 'edit'
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    if @employee.user_id == current_user.id
      @employee.destroy

      redirect_to "/employees", :notice => "Empleado borrado"
    else
      redirect_to "/employee", :alert => "Acción no autorizada"
    end

  end
end

class EmployersController < ApplicationController
  def index
    @employers = Employer.all
  end

  def show
    @employer = Employer.find(params[:id])
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
  end

  def new_PN
    @employer = Employer.new
  end

  def new_PJ
    @employer = Employer.new
  end

  def create_PN
    @employer = Employer.new
    @employer.user_id = params[:user_id]
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
    @employer.personalidad = params[:personalidad]
    @employer.first_name = params[:first_name]
    @employer.last_name = params[:last_name]
    @employer.nombre_empresa = params[:nombre_empresa]
    @employer.rut = params[:rut]
    @employer.calle = params[:calle]
    @employer.num = params[:num]
    @employer.comuna = params[:comuna]
    @employer.region = params[:region]
    @employer.dob = params[:dob]


    if @employer.save
      redirect_to "/employers", :notice => "Empleador creado"
    else
      render 'new_PN'
    end
  end

  def create_PJ
    @employer = Employer.new
    @employer.user_id = params[:user_id]
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
    @employer.personalidad = params[:personalidad]
    @employer.first_name = params[:first_name]
    @employer.last_name = params[:last_name]
    @employer.nombre_empresa = params[:nombre_empresa]
    @employer.rut = params[:rut]
    @employer.calle = params[:calle]
    @employer.num = params[:num]
    @employer.comuna = params[:comuna]
    @employer.region = params[:region]
    @employer.dob = params[:dob]

    if @employer.save
      redirect_to "/employers", :notice => "Empleador creado"
    else
      render 'new_PJ'
    end
  end

  def edit_PJ
    @employer = Employer.find(params[:id])
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
  end

  def edit_PN
    @employer = Employer.find(params[:id])
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end

  end


  def update_PN
    @employer = Employer.find(params[:id])

    @employer.user_id = params[:user_id]
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
    @employer.personalidad = params[:personalidad]
    @employer.first_name = params[:first_name]
    @employer.last_name = params[:last_name]
    @employer.nombre_empresa = params[:nombre_empresa]
    @employer.rut = params[:rut]
    @employer.calle = params[:calle]
    @employer.num = params[:num]
    @employer.comuna = params[:comuna]
    @employer.region = params[:region]
    @employer.dob = params[:dob]

    if @employer.save
      redirect_to "/employers", :notice => "Empleador actualizado"
    else
      render 'edit_PN'
    end
  end

  def update_PJ
    @employer = Employer.find(params[:id])

    @employer.user_id = params[:user_id]
    if @employer.user_id == current_user.id
    else
      redirect_to "/employers", :alert => "Acción no autorizada"
    end
    @employer.personalidad = params[:personalidad]
    @employer.first_name = params[:first_name]
    @employer.last_name = params[:last_name]
    @employer.nombre_empresa = params[:nombre_empresa]
    @employer.rut = params[:rut]
    @employer.calle = params[:calle]
    @employer.num = params[:num]
    @employer.comuna = params[:comuna]
    @employer.region = params[:region]
    @employer.dob = params[:dob]

    if @employer.save
      redirect_to "/employers", :notice => "Empleador actualizado"
    else
      render 'edit_PJ'
    end
  end

  def destroy

      @employer = Employer.find(params[:id])
    if @employer.user_id == current_user.id
      @employer.destroy

      redirect_to "/employers", :notice => "Empleador borrado"
    else
      redirect_to "/employers", :alert => "Acción no autorizada"

    end
  end
end

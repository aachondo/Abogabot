class Employee < ActiveRecord::Base

  belongs_to :user

  has_many :plazo_fijo_contratos , :class_name => "PlazoFijoContrato", :foreign_key => "employee_id"
  has_many :terminacion_contratos , :class_name => "TerminacionContrato", :foreign_key => "employee_id"


  validates :user_id, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :rut, :presence => true, :uniqueness => { :scope => :user }
  validates :num, :presence => true
  validates :nationality, :presence => true
  validates :dob, :presence => true
  validates :calle, :presence => true
  validates :comuna, :presence => true
  validates :region, :presence => true
  validates :salud, :presence => true
  validates :afp, :presence => true


end

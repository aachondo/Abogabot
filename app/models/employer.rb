class Employer < ActiveRecord::Base

  has_many :terminacion_contratos , :class_name => "TerminacionContrato", :foreign_key => "employer_id"
  has_many :plazo_fijo_contratos , :class_name => "PlazoFijoContrato", :foreign_key => "employer_id"
  belongs_to :user
  has_many :employees, :through => :plazo_fijo_contratos
  has_many :employees, :through => :terminacion_contratos

  validates :user_id, :presence => true
  validates :comuna, :presence => true
  validates :personalidad, :presence => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :nombre_empresa, :presence => true
  validates :rut, :presence => true, :uniqueness => { :scope => :user }
  validates :calle, :presence => true
  validates :num, :presence => true
  validates :region, :presence => true

end

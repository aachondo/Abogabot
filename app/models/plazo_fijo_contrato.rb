class PlazoFijoContrato < ActiveRecord::Base


  belongs_to :employee , :class_name => "Employee", :foreign_key => "employee_id"
  belongs_to :employer , :class_name => "Employer", :foreign_key => "employer_id"

  validates :employer_id, :presence =>true
  validates :employee_id, :presence =>true
  validates :tipo, :presence =>true
  validates :n_ejemplares, :presence =>true
  validates :fecha_fin, :presence =>true
  validates :fecha_inicio, :presence =>true
  validates :sueldo, :presence =>true
  validates :afternoon_end, :presence =>true
  validates :afternoon_start, :presence =>true
  validates :morning_end, :presence =>true
  validates :morning_start, :presence =>true
  validates :horas_semanales, :presence =>true
  validates :trabajo_de, :presence =>true
  validates :fecha_firma, :presence =>true
  validates :lugar, :presence =>true
  validates :dia_inicio, :presence =>true
  validates :dia_fin, :presence =>true

end

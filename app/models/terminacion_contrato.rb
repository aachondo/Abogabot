class TerminacionContrato < ActiveRecord::Base

  belongs_to :causal
  belongs_to :employee , :class_name => "Employee", :foreign_key => "employee_id"
  belongs_to :employer , :class_name => "Employer", :foreign_key => "employer_id"


  validates :employer_id, :presence => true
  validates :employee_id, :presence => true
  validates :hechos, :presence => true
  validates :causal_id, :presence => true
  validates :fecha_termino, :presence => true
  validates :tipo, :presence => true


end

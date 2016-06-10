class Causal < ActiveRecord::Base

  has_many :plazo_fijo_contratos , :class_name => "TerminacionContrato", :foreign_key => "causal_id"

  belongs_to :user , :class_name => "User", :foreign_key => "user_id"

  validates :user_id, :presence => true
  validates :des, :presence => true
  validates :inciso, :presence => true,  :uniqueness => { :scope => :articulo }
  validates :articulo, :presence => true,  :uniqueness => { :scope => :inciso }

end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :employers , :class_name => "Employer", :foreign_key => "user_id"
  has_many :employees , :class_name => "Employee", :foreign_key => "user_id"
has_many :causals , :class_name => "Causal", :foreign_key => "user_id"

end

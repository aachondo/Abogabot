class AddUserIdToEmployer < ActiveRecord::Migration
  def change

    change_column :employers, :user_id, :integer
    change_column :employees, :user_id, :integer

  end
end
  

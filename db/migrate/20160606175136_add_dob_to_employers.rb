class AddDobToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :dob, :date
  end
end

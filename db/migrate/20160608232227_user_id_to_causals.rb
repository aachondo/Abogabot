class UserIdToCausals < ActiveRecord::Migration
  def change

    add_column :causals, :user_id, :integer

  end
end

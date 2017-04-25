class AddUserIdToWife < ActiveRecord::Migration[5.0]
  def change
    add_column :wives, :user_id, :integer
  end
end

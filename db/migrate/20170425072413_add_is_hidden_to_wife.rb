class AddIsHiddenToWife < ActiveRecord::Migration[5.0]
  def change
    add_column :wives, :is_hidden, :boolean, default: true
  end
end

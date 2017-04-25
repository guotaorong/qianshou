class AddMoreDetailToWife < ActiveRecord::Migration[5.0]
  def change
    add_column :wives, :salary, :integer
    add_column :wives, :age, :integer
    add_column :wives, :city, :string
    add_column :wives, :contact_email, :string
  end
end

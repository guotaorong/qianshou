class AddMoreDetailToHusband < ActiveRecord::Migration[5.0]
  def change
    add_column :husbands, :salary, :integer
    add_column :husbands, :age, :integer
    add_column :husbands, :city, :string
    add_column :husbands, :contact_email, :string
  end
end

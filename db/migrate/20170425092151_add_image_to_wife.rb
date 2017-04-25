class AddImageToWife < ActiveRecord::Migration[5.0]
  def change
    add_column :wives, :image, :string
  end
end

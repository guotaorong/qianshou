class AddImageToHusband < ActiveRecord::Migration[5.0]
  def change
    add_column :husbands, :image, :string
  end
end

class AddIsHiddenToHusband < ActiveRecord::Migration[5.0]
  def change
    add_column :husbands, :is_hidden, :boolean, default: true
  end
end

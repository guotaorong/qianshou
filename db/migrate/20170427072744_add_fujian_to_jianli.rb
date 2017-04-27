class AddFujianToJianli < ActiveRecord::Migration[5.0]
  def change
    add_column :jianlis, :fujian, :string
  end
end

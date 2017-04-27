class CreateHusbands < ActiveRecord::Migration[5.0]
  def change
    create_table :husbands do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

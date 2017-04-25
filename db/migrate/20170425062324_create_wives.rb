class CreateWives < ActiveRecord::Migration[5.0]
  def change
    create_table :wives do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

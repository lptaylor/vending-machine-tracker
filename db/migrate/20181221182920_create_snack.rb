class CreateSnack < ActiveRecord::Migration[5.1]
  def change
    create_table :snacks do |t|
      t.string :name
      t.integer :price
      t.references :machinesnacks, foreign_key: true
    end
  end
end

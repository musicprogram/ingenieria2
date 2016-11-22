class CreateDashes < ActiveRecord::Migration
  def change
    create_table :dashes do |t|
      t.string :titulo
      t.string :persona
      t.string :argumento
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

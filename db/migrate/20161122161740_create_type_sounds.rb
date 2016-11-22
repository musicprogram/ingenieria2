class CreateTypeSounds < ActiveRecord::Migration
  def change
    create_table :type_sounds do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end

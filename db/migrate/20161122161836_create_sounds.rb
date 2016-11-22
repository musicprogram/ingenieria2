class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :duracion
      t.string :formato
      t.references :type_sound, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

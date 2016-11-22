class AddAttachmentSonidoToSounds < ActiveRecord::Migration
  def self.up
    change_table :sounds do |t|
      t.attachment :sonido
    end
  end

  def self.down
    remove_attachment :sounds, :sonido
  end
end

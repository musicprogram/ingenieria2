class AddAttachmentImagenToDashes < ActiveRecord::Migration
  def self.up
    change_table :dashes do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :dashes, :imagen
  end
end

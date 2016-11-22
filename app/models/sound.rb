class Sound < ActiveRecord::Base
    belongs_to :type_sound
    
    validates :duracion, presence: true
    validates :formato, presence: true
    validates :type_sound_id, presence: true
    
    has_attached_file :sonido

    validates_attachment_content_type :sonido, :content_type => [ 'audio/mp3','audio/mpeg']
    validates_attachment_presence :sonido
  
end

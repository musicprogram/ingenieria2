class Dash < ActiveRecord::Base
    validates :titulo, presence: true
    validates_uniqueness_of :titulo
    validates :persona, presence: true
    validates :descripcion, presence: true
    has_attached_file :imagen, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :imagen, content_type: /\Aimage\/.*\z/
end

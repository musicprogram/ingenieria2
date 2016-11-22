class TypeSound < ActiveRecord::Base
    validates :nombre, presence: true
    validates_uniqueness_of :nombre
    has_many :sounds
end

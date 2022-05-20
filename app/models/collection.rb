class Collection < ApplicationRecord
    has_many :books

    validates :name, presence: { message: 'El nombre de la colección es obligatorio'}
end

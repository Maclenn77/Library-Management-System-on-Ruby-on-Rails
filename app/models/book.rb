class Book < ApplicationRecord
    
    validates :author, presence: { message: "El autor es obligatorio, ingrese Anónimo en caso de ser desconocido"}
    validates :title, presence:true
    
    validate :check_isbn
    

    def check_isbn
        if isbn.nil?
            errors.add(:isbn, 'El ISBN es obligatorio')
        else
          unless isbn.length == 10 || isbn.length == 13
            errors.add(:isbn, 'El ISBN debe ser de 10 o 13 caracteres')
          end
        end
    end
end

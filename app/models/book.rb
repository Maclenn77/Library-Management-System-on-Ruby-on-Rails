class Book < ApplicationRecord
    validates :isbn, presence:true, length: { is:10 || is:13 }
    validates :author, presence:true
    validates :title, presence:true
end

class Author < ApplicationRecord
  had_many :books, through: :book_authors
end

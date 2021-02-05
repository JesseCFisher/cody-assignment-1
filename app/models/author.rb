class Author < ApplicationRecord
  has_many :bookss, class_name: "books", foreign_key: "author_id"
end

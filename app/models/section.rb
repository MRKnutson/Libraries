class Section < ApplicationRecord
  belongs_to :library
  has_many :books, dependent: :destroy
end

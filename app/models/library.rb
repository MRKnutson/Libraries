class Library < ApplicationRecord
  has_many :sections, dependent: :destroy
end

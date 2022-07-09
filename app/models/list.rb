class List < ApplicationRecord
  validates :name, { presence: true, uniqueness: true, allow_nil: false }

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end

class List < ApplicationRecord
  validates :name, { presence: true, uniqueness: true, allow_nil: false }
  has_one_attached :photo

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
end

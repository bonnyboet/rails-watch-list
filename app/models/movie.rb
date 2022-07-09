class Movie < ApplicationRecord
  validates :title, { presence: true, uniqueness: true, allow_nil: false }
  validates :overview, presence: true
  has_many :bookmarks
end

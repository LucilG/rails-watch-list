class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, presence: true
  validates :comment, length: { minimum: 7 }

  validates :movie, uniqueness: { scope: :list, message: "a bookmark should be unique" }
end

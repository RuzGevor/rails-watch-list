class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie_id, uniqueness: { scope: :list_id }
  validates :comment, presence: true, length: { minimum: 6 }
end

##You can’t delete a movie if it is referenced in at least one bookmark.

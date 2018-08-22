class Writer < ApplicationRecord
  has_many :story_writers
  has_many :stories, through: :story_writers
  validates :name, presence: true
end

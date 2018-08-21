class Writer < ApplicationRecord
  validates :pen_name, presence: true
  has_many :writer_languages
  has_many :story_writers
  has_many :languages, through: :writer_languages
  has_many :stories, through: :story_writers
end

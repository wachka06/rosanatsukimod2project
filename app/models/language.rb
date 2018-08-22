class Language < ApplicationRecord
  has_many :story_languages
  has_many :stories, through: :story_languages
  validates :name, presence: true
end

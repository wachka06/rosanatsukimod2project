class Story < ApplicationRecord
  has_many :story_languages
  has_many :languages, through: :story_languages
end

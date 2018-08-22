class StoryLanguage < ApplicationRecord
  belongs_to :story
  belongs_to :language
end

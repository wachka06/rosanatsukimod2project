class StoryWriter < ApplicationRecord
  belongs_to :story
  belongs_to :writer
end

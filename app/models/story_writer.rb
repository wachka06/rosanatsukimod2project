class StoryWriter < ApplicationRecord
  belongs_to :writer_id
  belongs_to :story_id
end

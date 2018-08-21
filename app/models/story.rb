class Story < ApplicationRecord
  has_many :story_writers
  has_many :comments
  has_many :writers, through: :story_writers
end

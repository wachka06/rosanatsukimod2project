class Language < ApplicationRecord
  has_many :writer_languages
  has_many :writers, through: :writer_languages
end

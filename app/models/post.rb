class Post < ApplicationRecord
  MIN_LENGTH = 3
  TITLE_MAX_LENGTH = 64
  BODY_MAX_LENGTH = 140

  validates :title, uniqueness: { case_sensitive: true }, presence: true, length: { in: MIN_LENGTH..TITLE_MAX_LENGTH }
  validates :body, presence: true, length: { in: MIN_LENGTH..BODY_MAX_LENGTH }
end

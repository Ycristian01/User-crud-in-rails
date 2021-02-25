class SocialNetwork < ApplicationRecord
  belongs_to :user

  validates :link, presence: true
end

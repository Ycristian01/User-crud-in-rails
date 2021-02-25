class User < ApplicationRecord
  has_many :social_networks, dependent: :destroy
  has_one_attached :avatar

  validates :name, presence: true
end

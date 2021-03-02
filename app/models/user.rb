class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :social_networks, dependent: :destroy
  has_one_attached :avatar

  validates :name, presence: true, length: { minimum: 6, maximun: 100 }
  validates :description, presence: true, length: { minimum: 10, maximun: 300 }
end

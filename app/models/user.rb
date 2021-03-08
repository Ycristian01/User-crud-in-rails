class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :social_networks, dependent: :destroy
  
  accepts_nested_attributes_for :social_networks, reject_if: :all_blank, allow_destroy: true
  has_one_attached :avatar

  validates :name, presence: true, length: { minimum: 6, maximun: 50 }
  validates :username, presence: true, length: { minimum: 6, maximun: 20 }
  validates :username, uniqueness: true
  validates :username, :format => { :with => /\A(?=.*[a-z])[a-z\d]+\Z/i }
  #validates :description, length: { minimum: 10, maximun: 300 }
end

class User < ApplicationRecord
    has_many :social_networks

    validates :name, presence: true
end

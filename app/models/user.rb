class User < ApplicationRecord
    has_secure_password
    has_many :habits
    has_many :logs, through: :habits

    validates_presence_of :email
    validates_uniqueness_of :email
end
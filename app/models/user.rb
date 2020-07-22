class User < ApplicationRecord
    has_secure_password
    belongs_to :user

    validates_presence_of :email
    validates_uniqueness_of :email
end

class Habit < ApplicationRecord
  belongs_to :user
  has_many :logs
end
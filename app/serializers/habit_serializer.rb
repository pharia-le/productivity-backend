class HabitSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :logs
end

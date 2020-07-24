class LogSerializer < ActiveModel::Serializer
  attributes :id, :done, :date_time
  belongs_to :habit
end

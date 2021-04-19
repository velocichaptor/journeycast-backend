class VacationSerializer < ActiveModel::Serializer
    attributes :id, :title, :date, :day, :note, :user_id, :location_id
    belongs_to :user
    belongs_to :location
    has_many :days
  end

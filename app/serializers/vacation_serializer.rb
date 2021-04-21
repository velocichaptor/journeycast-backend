class VacationSerializer < ActiveModel::Serializer
    attributes :id, :title, :start_date, :end_date, :day, :note, :user_id, :location_id, :vacation_days
    
    belongs_to :user
    belongs_to :location
    has_many :days
  end

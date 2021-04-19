class DaySerializer < ActiveModel::Serializer
    attributes :id, :name, :forecast, :activity, :vacation_id
    belongs_to :vacation
  end

  
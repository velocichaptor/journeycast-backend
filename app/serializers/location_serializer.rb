class LocationSerializer < ActiveModel::Serializer
    attributes :id, :name
    has_many :vacations
    has_many :users, through: :vacations
  end
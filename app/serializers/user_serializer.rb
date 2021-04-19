class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :age
    has_many :vacations
    has_many :locations, through: :vacations
  end

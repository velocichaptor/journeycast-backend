class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :age, :username, :password
    has_many :vacations
    has_many :locations, through: :vacations
  end

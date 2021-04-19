class Vacation < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :days
end

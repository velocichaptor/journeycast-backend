class VacationSerializer < ActiveModel::Serializer
    attributes :id, :title, :start_date, :end_date, :day, :note, :user_id, :location_id
    
    belongs_to :user
    belongs_to :location
    has_many :days


    # def vacation_days
    #    object.title.upcase
    #   # arr_of_datetimes = []
    #   # number_of_days = (self.end_date - self.start_date)/86000
    #   # new_date = self.start_date

    #   # (number_of_days.floor).times do 
    #   #     new_date = new_date + 86400
    #   #     arr_of_datetimes.push(new_date)
    #   # end 
    #   # arr_of_datetimes
    # end
  end

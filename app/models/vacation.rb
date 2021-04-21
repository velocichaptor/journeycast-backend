class Vacation < ApplicationRecord
    belongs_to :user
    belongs_to :location
    has_many :days

    def to_json 
        {
            id: self.id,
            title: self.title,
            start_date: self.start_date,
            end_date: self.end_date,
            day: self.day,
            note: self.note,
            user_id: self.user_id,
            location_id: self.location_id,
            user: self.user,
            location: self.location,
            days: self.days,
            vacation_days: self.vacation_days
        }
    end 

    def vacation_days
       
        arr_of_datetimes = []
        number_of_days = (self.end_date - self.start_date)/86000
        new_date = self.start_date

        (number_of_days.floor).times do 
            new_date = new_date + 86400
            arr_of_datetimes.push(new_date)
        end 
        arr_of_datetimes
    end
end

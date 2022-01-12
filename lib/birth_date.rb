require 'date'

class BirthDate

    attr_accessor :birthday

    def initialize(day, month)
        @day = day.to_i
        @month = month.to_i
    end 
    
    def start_date
        DateTime.now
    end 

    def birthday 
        DateTime.new(2022,@month,@day)
    end 

    def calculate
        birthday.mjd - start_date.mjd
    end

    def number_days
        puts calculate
    end 
end 
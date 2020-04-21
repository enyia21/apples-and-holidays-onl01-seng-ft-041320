require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
    holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "#{supply}"
  holiday_hash[:winter][:new_years] << "#{supply}"
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] <<"#{supply}"
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[:"#{season}"] = {:"#{holiday_name}" => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
winter_supplies = []
holiday_hash[:winter][:christmas].each do|value| winter_supplies << value end
holiday_hash[:winter][:new_years].each do|value| winter_supplies << value end
winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do|season, holidays|
      season_holder = ""
      season_holder = season.to_s.capitalize
      puts "#{season_holder}:"
        holidays.each do|holiday, supplies|
          holiday_holder = ""
          #Capitalize the first letter in the holiday key value
          holiday_holder = holiday.to_s.capitalize
          holiday_holder.to_a
          i=0
          while i<holiday_holder.length
            if holiday_holder[i] == "_"
              #Captializes any extra words after holiday key value based on current implementation.
              holiday_holder[i+1].capitalize!
              holiday_holder[i] = " "
              i+=1
            else
              i+=1
            end
          end
          holiday_holder.join
          print{"  #{holiday_holder}: "}
          supplies.each do|supply|
            supply.capitalize!
            if (supplies[0] == supply)
              print "#{supply}, "
            else
              print "#{supply}"
            end
          end
        end

    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end

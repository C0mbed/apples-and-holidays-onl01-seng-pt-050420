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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas]<< "Balloons"
  holiday_hash[:winter][:new_years]<< "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day]<< supply
  #holiday_hash[:spring][:memorial_day]<< "Table Cloth"
  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, data|
    data.each do |supply|
      winter_supplies << supply
    end
  end
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each do |season, data|
    if season.to_s.include?("-")
      season_format = season.split("_")
      season_result = ""
      result_array = []
      season_format.each do |word|
        result = word.capitalize
        result_array << result
      end
      season_result = season_array.join(" ")
    else
      season_result = season.to_s.capitalize
    end
   
    puts "#{season_result}:"
    data.each do |holiday, supplies|
      capitalized_supply = []
      supplies.each do |supply|
        capitalized_supply << supply.capitalize
      end
      formatted_supplies = capitalized_supply.join(", ")
      puts "  #{holiday.to_s.capitalize}: #{formatted_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  
end








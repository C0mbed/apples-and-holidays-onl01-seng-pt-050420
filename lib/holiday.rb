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
    holiday_result = ""
    supply_result = ""
    supply_array = []
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
      if holiday =~ /[_]/
        holiday_format = holiday.to_s.split("_")
        holiday_array = []
        holiday_format.each do |word|
          result = word.capitalize
          holiday_array << result
        end
        holiday_result = holiday_array.join(" ")
      else
        holiday_result = holiday.capitalize
      end
        
      supplies.each do |supply|
        binding.pry
        supply_format = []
        if supply =~ /[\s]/
          supply_array = supply.split(" ")
          supply_array.each do |word|
            result = word.capitalize
            supply_format << result
            binding.pry
          end
          supply_result = supply_format.join(" ")
        else
          supply_list << supply.capitalize
          supply_result << supply.join(" "e)
        end
      end
      if supply_result.length > 1
        supply_result = supply_result.join(" ")
      else
        
      end
      puts "  #{holiday_result}: #{supply_result}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |season, data|
    binding.pry
  end
  
end








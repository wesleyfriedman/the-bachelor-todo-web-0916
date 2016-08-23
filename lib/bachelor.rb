def get_first_name_of_season_winner(data,season)
  data.each do |generic_info, specific_info|
    if generic_info == season
      specific_info.each do |info_hash|
        if info_hash["status"] == "Winner"
          return info_hash["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |generic_info|
    generic_info.each do |info_hash|
      if info_hash["occupation"] == occupation
        return info_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.values.each do |generic_info|
    generic_info.each do |info_hash|
      if info_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.values.each do |generic_info|
    generic_info.each do |info_hash|
      if info_hash["hometown"] == hometown
        return info_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  number_of_contestants = 0
  data.each do |generic_info, specific_info|
    if generic_info == season
      specific_info.each do |info_hash|
        number_of_contestants += 1
        age += info_hash["age"].to_f
      end
    end
  end
  return (age/number_of_contestants).round
end

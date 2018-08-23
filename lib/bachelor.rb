def get_first_name_of_season_winner(data, season)
  contestants = data[season]
  contestants.each do |attributes|
    if attributes["status"] == "Winner"
      return attributes["name"].split(' ')[0]
    end 
  end 
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |attributes|
      if attributes["occupation"] == occupation
        return attributes["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |attributes|
      if attributes["hometown"] == hometown 
        count += 1 
      end 
    end 
  end 
  count 
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |attributes|
      if attributes["hometown"] == hometown 
        return attributes["occupation"]
      end
    end 
  end 
end

def get_average_age_for_season(data, season)
  contestants = data[season]
  sum = 0.0
  contestants.each do |attrs|
    sum += attrs["age"].to_f
  end
  puts sum 
  puts contestants.length 
  puts ''
  
  sum > sum.to_i ? (sum).to_i + 1 / contestants.length : sum.to_i / contestants.length 
  # sum / contestants.length 
end

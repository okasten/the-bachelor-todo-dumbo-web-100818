require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  counter = 0
  data.each do |seasons, contestant|
    if seasons == season 
      contestant.each do |description|
        if description.values[-1] == "Winner"
          winner_name = data[season][counter]["name"]
        end 
        counter += 1
      end 
    end
  end
  winner_name = winner_name.split(" ")
  winner_name[0]
end

def get_contestant_name(data, occupation)
  name = ""
  counter = 0
  data.each do |seasons, contestant|
      contestant.each do |description|
        if data[seasons][counter]["occupation"] == occupation
          name = data[seasons][counter]["name"]
        end 
        counter += 1
      end
      counter = 0
  end
  name
end

def count_contestants_by_hometown(data, hometown)
   counter = 0
   num_of_people = 0
   
   data.each do |seasons, contestants|
     contestants.each do |description|
        if data[seasons][counter]["hometown"] == hometown
          num_of_people += 1 
        end
        counter += 1
      end 
      counter = 0
    end 
   num_of_people
end

def get_occupation(data, hometown)
  counter = 0
  
  data.each do |seasons, contestants|
    contestants.each do |attribute|
      if data[seasons][counter]["hometown"] == hometown
        return data[seasons][counter]["occupation"]
      end 
      counter += 1
    end 
    
    counter = 0
  end 
end 

def get_average_age_for_season(data, season)
  total_age = 0
  num_of_people = 0
  counter = 0
  
  data.each do |seasons, contestant|
    if seasons == season
      contestant.each do |attribute|
        total_age += data[seasons][counter]["age"].to_f
        num_of_people += 1
        counter += 1
      end 
    end 
    counter = 0
  end 
 # binding.pry
  (total_age/num_of_people).round
end



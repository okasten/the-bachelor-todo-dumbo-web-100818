require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data.each do |seasons, contestant|
    if seasons == season 
     # binding.pry
      contestant.each do |description|
        binding.pry
        if description.values == "Winner"
          winner_name = contestant
        end 
      end 
    end
  end 
  winner_name.split(" ")
  winner_name[0]
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

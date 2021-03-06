require 'pry'

def game_hash
  return {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks => 5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def home_team_name
  game_hash[:home][:team_name]
end

# puts home_team_name
# => "Brooklyn Nets"

# def good_practices
#   game_hash.each do |location, team_data|
#     #are you ABSOLUTELY SURE what 'location' and 'team data' are? use binding.pry to find out!
#     binding.pry
#       team_data.each do |attribute, data|
#         #are you ABSOLUTELY SURE what 'attribute' and 'team data' are? use binding.pry to find out!
#         binding.pry

#         #what is 'data' at each loop through out .each block? when will the following line of code work and when will it break?
#         data.each do |data_item|
#             binding.pry
#       end
#     end
#   end
# end

# good_practices

def num_points_scored(player_name)
  game_hash.each do |location, team_data|
    if team_data[:players].has_key?(player_name)
      team_data.each do |key, stats| # if a hash has the player name that was inputted -> iterating on that hash
        if stats.is_a?(Hash)  # finding value that is a hash - player stats is a hash while the rest are strings
          player_stats = stats[player_name] # assigning variable to key that matches player name (which is a string)
          player_stats.each do |thing, value| # iterating on player name's stats
            return value if thing == :points # returning the value of the key called points
          end
        end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team_data|
    if team_data[:players].has_key?(player_name)
      team_data.each do |key, stats|
        if stats.is_a?(Hash)
          player_stats = stats[player_name]
          player_stats.each do |thing, value|
            return value if thing == :shoe
          end
        end
      end
    end
  end
end

def team_colors(team_name)
  game_hash.each do |location, team_data|
    if team_data.has_value?(team_name)
      team_data.each do |key, value|
        return value if key == :colors
      end
    end
  end
end

def team_names # this one should work but rspec is recognizing array length as 13 instead of 2
  game_hash.each do |location, team_data|
    return team_data[:team_name]
  end
end

def player_numbers
end

def player_stats(player_name)
  game_hash.each do |location, team_data|
    if team_data[:players].has_key?(player_name)
      team_data.each do |key, stats|
        if stats.is_a?(Hash)
          stats.each do |player, player_stats|
            return player_stats if player == player_name
          end
        end
      end
    end
  end
end

def big_shoe_rebounds
  game_hash.each do |location, team_data|
    team_data.each do |key, value|
      if value.is_a?(Hash)
        value.each do |player, player_stats|
          sizes = player_stats[:shoe].to_i
          puts sizes.class
        end
      end
    end
  end
end

big_shoe_rebounds

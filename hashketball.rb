# hashketball = {
#   :home => {
#     :team_name => "Brooklyn Nets",
#     :colors => ["Black", "White"],
#     :players => {
#       "Alan Anderson" => {
#         :number => 0,
#         :shoe => 16,
#         :points => 22,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 3,
#         :blocks => 1,
#         :slam_dunks => 1,
#         },
#       "Reggie Evans" => {
#         :number => 30,
#         :shoe => 14,
#         :points => 12,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 12,
#         :blocks => 12,
#         :slam_dunks => 7,
#         },
#       "Brook Lopez" => {
#         :number => 11,
#         :shoe => 17,
#         :points => 17,
#         :rebounds => 19,
#         :assists => 10,
#         :steals => 3,
#         :blocks => 1,
#         :slam_dunks => 15,
#         },
#       "Mason Plumlee" => {
#         :number => 1,
#         :shoe => 19,
#         :points => 26,
#         :rebounds => 12,
#         :assists => 6,
#         :steals => 3,
#         :blocks => 8,
#         :slam_dunks => 5,
#         },
#       "Jason Terry" => {
#         :number => 31,
#         :shoe => 15,
#         :points => 19,
#         :rebounds => 2,
#         :assists => 2,
#         :steals => 4,
#         :blocks => 11,
#         :slam_dunks => 1,
#         },
#       },
#     },
#   :away => {
#     :team_name => "Charlotte Hornets",
#     :colors => ["Turquoise", "Purple"],
#     :players => {
#       "Jeff Adrien" => {
#         :number => 4,
#         :shoe => 18,
#         :points => 10,
#         :rebounds => 1,
#         :assists => 1,
#         :steals => 2,
#         :blocks => 7,
#         :slam_dunks => 2,
#         },
#       "Bismak Biyombo" => {
#         :number => 0,
#         :shoe => 16,
#         :points => 12,
#         :rebounds => 4,
#         :assists => 7,
#         :steals => 7,
#         :blocks => 15,
#         :slam_dunks => 10,
#         },
#       "DeSagna Diop" => {
#         :number => 2,
#         :shoe => 14,
#         :points => 24,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 4,
#         :blocks => 5,
#         :slam_dunks => 5,
#         },
#       "Ben Gordon" => {
#         :number => 8,
#         :shoe => 15,
#         :points => 33,
#         :rebounds => 3,
#         :assists => 2,
#         :steals => 1,
#         :blocks => 1,
#         :slam_dunks => 0,
#         },
#       "Brendan Haywood" => {
#         :number => 33,
#         :shoe => 15,
#         :points => 6,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 22,
#         :blocks => 5,
#         :slam_dunks => 12,
#         },
#       },
#     },
#   }

# this isn't working
# since we're dealing with a huge hash I decided to simply return a hash which is the first step of the first method called "game_hash"

# gamehash = {
#   :thing => "ayyyoooo"
# }
  
# def game_hash(gamehash)
#   puts gamehash
# end

# using the short "gamehash" for step 1, returning error w "wrong # of arguments (gamehash being passed in, method not called for as we are running rspec)

# so now I tried storing the hash within a method and passing in the method to the first method instead of a hash

# def gamehash
#   hash = {
#     :thing => "ayoooooo"
#   }
# end

# def game_hash(gamehash)
#   puts gamehash
# end

# that didn't work either
# so now what I'm going to do is steal someone's pull request who finished the lab with no failures
# I compared rspec files using diffchecker.com and the files are exactly the same. so then I compared our hashes
# and what I realized is that some of my hashes have commas at the end of a hash when they are finished. so that could contribute to the problem?
# this is the part where I repaste the entire hash without the commas and then wrap it in a method


def hash
hashketball = {
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

def game_hash(hash)
  puts hash
end

# k i just got the weirdest error - snippet_extractor.rb:101:in `&': no implicit conversion of Hash into Integer (TypeError)
# i'm going to come back to this lab bc this is one big giant no lol


## anyway this was the rest of my previously written code

# def team_name(hash)
#   hash[:home][:team_name]
# end
# puts team_name(hashketball)

# def num_points_scored(hash, player)
#   hash[:home][:players][player][:points]
# end

# puts num_points_scored(hashketball, "Alan Anderson")

# def shoe_size(hash)
#   hash[:team_name][:players][:shoe]
# end

# puts shoe_size(hashketball)

# def team_colors(hash, team_name)
#   hash[:home][:colors]
# end

# puts team_colors(hashketball, "Brooklyn Nets")

# def team_names(hash)
#   hash[:home][:team_name]
# end

# puts team_names(hashketball)

# def players_numbers(hash, players)
#   hash.each_value{|number| puts number}
#   hash[:home][players][:number]
# end

# puts players_numbers(hashketball, :players)











$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_len = director_data[:movies].length
  tally = 0
  film_index = 0
  while film_index < movies_len do
    tally = tally + director_data[:movies][film_index][:worldwide_gross]
    film_index += 1
  end
  return tally
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  total_grosses = {}
  director_index = 0
  
  while director_index < nds.length do
    director_data = nds[director_index]
    total_grosses[director_data[:name]] = gross_for_director(director_data)
    director_index += 1
  end
  return total_grosses
  
  
  
end

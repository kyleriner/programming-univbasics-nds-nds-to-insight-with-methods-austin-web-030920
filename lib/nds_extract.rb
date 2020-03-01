$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movies_len = nds[director_index][:movies].length
  tally = 0
  film_index = 0
  while film_index < movies_len do
    tally = tally + nds[director_index][:movies][film_index][:worldwide_gross]
    film_index += 1
  end
  
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  total_grosses = {}
  director_index = 0
  
  while director_index < nds.length do
    
    director = nds[director_index][:name]
    gross_for_director(director)
    total_grosses[director] = tally
    
    director_index += 1
  end
  return total_grosses
  
  
  
end

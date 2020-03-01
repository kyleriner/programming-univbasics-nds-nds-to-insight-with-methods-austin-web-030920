$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp 
  
  while film_index < nds[director_index][:movies].length do
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
  tally = 0
  while director_index < nds.length do
    film_index = 0
    director = nds[director_index][:name]
    while film_index < nds[director_index][:movies].length do
      tally = tally + nds[director_index][:movies][film_index][:worldwide_gross]
      film_index += 1
    end
    film_index = 0
    total_grosses[director] = tally
    tally = 0
    director_index += 1
  end
  return total_grosses
  
  
  
end

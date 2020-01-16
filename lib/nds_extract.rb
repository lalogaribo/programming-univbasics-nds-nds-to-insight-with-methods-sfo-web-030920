$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
print directors_database.length
pp directors_database
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  worldwide_grosses = 0
  director_data[:movies].each do |movie|
    worldwide_gross += movie[:worldwide_gross]
  end
 pp worldwide_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.each do |director|
    result[director[:name]] = 0
    data = gross_for_director(director)
    result[director[:name]] += data
  end
  pp result
end

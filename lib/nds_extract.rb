$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database
  
#------------------------------------------
ef directors_totals(nds)
  director_index = 0
  total = {}

  while director_index < nds.length do
    name_index = nds[director_index][:name]
    total[name_index] = 0
    movie_index = 0

    while movie_index < nds[director_index][:movies].length do
      total[name_index] += nds[director_index][:movies][movie_index][:worldwide_gross]
      movie_index += 1
    end

    director_index += 1
  end

  total
end
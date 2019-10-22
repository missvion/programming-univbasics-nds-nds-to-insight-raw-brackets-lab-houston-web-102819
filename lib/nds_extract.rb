$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

pp directors_database
  
#------------------------------------------
def directors_totals(nds)
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


grand_total = {}
row_index = 0
while row_index < nds.length do
  movie_index = 0
  while movie_index < nds[row_index][:movies].length do
    inner_len = vm[row_index][column_index].length
    inner_index = 0
    while inner_index < inner_len do
      grand_total += nds[row_index][:movie][movie_index][:worldwide_gross]
      inner_index += 1
    end
    movie_index += 1
  end
  row_index += 1
grand_total
end

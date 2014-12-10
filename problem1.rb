# 1. The distance of the route A-B-C.
# 2. The distance of the route A-D.
# 3. The distance of the route A-D-C.
# 4. The distance of the route A-E-B-C-D.
# 5. The distance of the route A-E-D.
# 6. The number of trips starting at C and ending at C with a maximum of 3 stops.  In the sample data below, there are two such trips: C-D-C (2 stops). and C-E-B-C (3 stops).

# 7. The number of trips starting at A and ending at C with exactly 4 stops.  In the sample data below, there are three such trips: A to C (via B,C,D); A to C (via D,C,D); and A to C (via D,E,B).

# 8. The length of the shortest route (in terms of distance to travel) from A to C.

# 9. The length of the shortest route (in terms of distance to travel) from B to B.

# 10. The number of different routes from C to C with a distance of less than 30.  In the sample data, the trips are: CDC, CEBC, CEBCDC, CDCEBC, CDEBC, CEBCEBC, CEBCEBCEBC.


# Expected Output:
 
# Output #1: 9
# Output #2: 5
# Output #3: 13
# Output #4: 22
# Output #5: NO SUCH ROUTE
# Output #6: 2
# Output #7: 3
# Output #8: 9
# Output #9: 9
# Output #10: 7

graph = ['AB5', 'BC4', 'CD8', 'DC8', 'DE6', 'AD5', 'CE2', 'EB3', 'AE7']
# Graph: AB5, BC4, CD8, DC8, DE6, AD5, CE2, EB3, AE7

@routes = graph.map do |vector|
  route = vector.split('')
  { start: route[0], finish: route[1], distance: route[2].to_i }
end

def three_stop_distance(stop1, stop2, stop3)
  route = @routes.select do |track|
    track[:start] == stop1 && track[:finish] == stop2 || track[:start] == stop2 && track[:finish] == stop3
  end 

  @three_stop_distance = 0

  route.each do |track|
    @three_stop_distance += track[:distance]
  end

  if route.length != 2
    puts "NO SUCH ROUTE"
  else
    puts "#{stop1}-#{stop2}-#{stop3}: #{@three_stop_distance}"
  end
end


def two_stop_distance(stop1, stop2)
  @routes.select do |track|
    if track.fetch(:start) == stop1 && track.fetch(:finish) == stop2 
      @two_stop_distance = track[:distance]
    end
  end
  
  if @two_stop_distance.nil?
    puts "NO SUCH ROUTE"
  else
    puts "#{stop1}-#{stop2}: #{@two_stop_distance}"
  end
end

def five_stop_distance(stop1, stop2, stop3, stop4, stop5)
  route = @routes.select do |track|
    track[:start] == stop1 && track[:finish] == stop2 || track[:start] == stop2 && track[:finish] == stop3 || track[:start] == stop3 && track[:finish] == stop4 || track[:start] == stop4 && track[:finish] == stop5
  end 

  @five_stop_distance = 0

  route.each do |track|
    @five_stop_distance += track[:distance]
  end

  if route.length != 4
    puts "NO SUCH ROUTE"
  else
    puts "#{stop1}-#{stop2}-#{stop3}-#{stop4}-#{stop5}: #{@five_stop_distance}"
  end
end



three_stop_distance("A","B","C")
two_stop_distance("A","D")
three_stop_distance("A","D","C")
five_stop_distance("A","E","B","C","D")
three_stop_distance("A","E","D")

distance(["A","B","C"])
distance(["A","D"])
distance(["A","D","C"])
distance(["A","E","B","C","D"])
distance(["A","E","D"])

# 6. The number of trips starting at C and ending at C with a maximum of 3 stops.  
#    In the sample data below, there are two such trips: C-D-C (2 stops). and C-E-B-C (3 stops).




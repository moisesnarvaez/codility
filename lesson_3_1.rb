
def solution(x, y, d)
  distance = y - x
  (distance.to_f / d.to_f).ceil
end

puts '****************************'
puts '--- Lesson 3: Exercise 1 ---'
puts '****************************'

start_point   = 10
end_point     = 85
frog_capacity = 30

# [3, 8, 9, 7, 6]

result = solution(start_point, end_point, frog_capacity)
puts "The frog will need to jump at least: #{result} times."

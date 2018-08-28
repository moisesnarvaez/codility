
# TODO Improve Performance
def solution(array, size=nil)
  size = array.size if size.nil?
  result = nil
  (1..size-1).each do |iteration|
    next if iteration.zero?
    lado_a = 0
    lado_b = 0
    array.each_with_index do |element, j|
      if j < iteration
        lado_a = (lado_a || 0) + element
      else
        lado_b = (lado_b || 0) + element
      end
    end
    abs_difference = (lado_a - lado_b).abs
    result = abs_difference if result.nil? || abs_difference < result
  end
  result || 0
end

puts '****************************'
puts '--- Lesson 3: Exercise 3 ---'
puts '****************************'

array = [3, 1, 2, 4, 3]

result = solution(array)
puts "The minimun difference is: #{result}."


# A
# 0
# 0,1
# 0,1,2
# 0,1,2,3


# B
# 1,2,3,4
# 2,3,4
# 3,4
# 4

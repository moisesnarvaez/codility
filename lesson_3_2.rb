
def solution(array)
  array.sort!
  array.each_with_index do |element, i|
    expected = i + 1
    return expected if element != expected
  end
  array.size + 1
end

puts '****************************'
puts '--- Lesson 3: Exercise 2 ---'
puts '****************************'

array = [1, 3]

result = solution(array)
puts "The missing number is: #{result}."

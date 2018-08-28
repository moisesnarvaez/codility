
def solution(array)
  batch_size = 1000
  acumulator = []
  result = nil
  array.each do |element|
    if acumulator[element]
      acumulator[element] = nil
    else
      acumulator[element] = true
      result = element
    end
  end
  result
end

puts '****************************'
puts '--- Lesson 2: Exercise 2 ---'
puts '****************************'

array = [9, 3, 9, 3, 9, 7, 9]

result = solution(array)

puts "The unpaired element is: #{result}"

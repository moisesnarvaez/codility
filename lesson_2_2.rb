
def solution(array)
  batch_size = 1000
  acumulator = []
  array.each_slice(batch_size) do |batch|
    batch.each do |element|
      acumulator[element] = (acumulator[element] || 0) + 1
    end
  end
  acumulator.each_slice(batch_size).with_index do |array_part, i|
    increment = batch_size * i
    array_part.each_with_index do |element, j|
      next if element.nil? || (element % 2).zero?
      return j + increment
    end
  end
  nil
end

puts '****************************'
puts '--- Lesson 2: Exercise 2 ---'
puts '****************************'

array = [9, 3, 9, 3, 9, 7, 9]

result = solution(array)

puts "The unpaired element is: #{result}"

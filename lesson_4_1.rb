
def solution(array)
  batch_size = 100
  array.sort!
  array.each_slice(batch_size).with_index do |array_part, j|
    increment = batch_size * j
    array_part.each_with_index do |element, j|
      return 0 if element != (j + increment + 1)
    end
  end
  1
end

puts '****************************'
puts '--- Lesson 4: Exercise 1 ---'
puts '****************************'

array = [4, 1, 3, 2, 5, 6]

result = solution(array)
puts "The array is a permutation? #{result ? 'YES' : 'NO'}."

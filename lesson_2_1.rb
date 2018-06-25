
def solution(array_original, rotate_number)
  array_transformed = []
  array_size = array_original.size

  return array_original if array_size.eql?(rotate_number) || array_size.eql?(1)

  (0..array_size - 1).each do |i|
    new_position = i + rotate_number
    new_position -= array_size if new_position >= array_size
    array_transformed[new_position] = array_original[i]
  end
  array_transformed
end

puts '****************************'
puts '--- Lesson 2: Exercise 1 ---'
puts '****************************'

array_original = [3, 8, 9, 7, 6]
rotate_number = 3

# [3, 8, 9, 7, 6]

result = solution(array_original, rotate_number)

puts 'Original Array:'
p array_original
puts "Array rotated: #{rotate_number} times:"
p result

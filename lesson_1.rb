def sulution(number)
  binary_number = "%b" % number
  one_acum   = 0
  zero_acum  = 0
  result     = 0
  binary_number.split('').each do |n|
    if n.eql? '0'
      zero_acum += 1
    else
      one_acum += 1
      next if one_acum < 2
      one_acum  = 1
      result = zero_acum if zero_acum > result
      zero_acum = 0
    end
  end
  result
end

prompt = "> "

puts "****************"
puts "--- Lesson 1 ---"
puts "****************"

number = ARGV.first
unless number
  puts "Write a number: ", prompt
  number = $stdin.gets.chomp
end
result = sulution(number)

puts "The amount of inary gap is: #{result}"

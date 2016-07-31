def always_3 (number)
(((number + 5) *2 -4)/2 - number)
end
puts "Give me a number"
first_number = gets.to_i
puts "Always"+ always_3(first_number).to_s

always_3 (4)

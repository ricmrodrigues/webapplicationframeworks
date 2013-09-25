def divider(num1, num2)
  division = nil
  begin
    division = num1 / num2
  rescue TypeError
    puts "non numeric types"    
  rescue ZeroDivisionError
    puts "tried to divide by zero"
  end
  division
end

puts "num 1"
num1 = gets.to_i
puts "num 2"
num2 = gets.to_i
puts divider(num1,num2)

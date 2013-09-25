def calculateTax(salary)
  if (salary > TAX_BAND)    
    beforeBand = TAX_BAND * 0.21
    afterBand = (salary-TAX_BAND) * 0.4
    return beforeBand + afterBand
  else
    salary * 0.20
  end  
end

TAX_BAND = 32800

begin
  salary = 0
  taxPayed = 0
  puts "what's your yearly salary ?"
  salaryStr = gets().chomp()
  #force failure if not int
  !!Integer(salaryStr)
  salary = salaryStr.to_i
  taxPayed = calculateTax(salary)
rescue Exception => e
  puts "salary read error: " + e.to_s
  retry
ensure
  puts "salary: " + salary.to_s
  puts "tax payed: " + taxPayed.to_s
end


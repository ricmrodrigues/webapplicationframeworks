class PrimeNumbers
  def initialize(number)
    @number = number  
  end
  
  def checkprime()
    (@number-1).downto(2){|i|
      if ((@number % i) == 0)
        return false      
      end
    }
    
    return true
  end
end

timeStart = Time.now
p = PrimeNumbers.new(11)
puts "#{p.checkprime}"
puts Time.now - timeStart

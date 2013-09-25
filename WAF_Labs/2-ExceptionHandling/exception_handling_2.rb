fileName = "Bench1.rb"
begin
  file = File.new(fileName)
rescue Exception => e
  puts "file not found, defaulting to exception_handling_1.rb"
  fileName = "/home/nci/Documents/Aptana Studio 3 Workspace/WAF_Lab2/exception_handling_1.rb"
  file = File.new(fileName)
ensure
  counter = 0
  begin
    while (line = file.gets)
      puts "#{counter}: #{line}"
      counter = counter + 1
    end    
  rescue Exception => e 
    puts "exception reading default file: " + e.message
  ensure
    file.close
  end
end

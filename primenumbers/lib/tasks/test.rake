require 'rake/testtask'

Rake::TestTask.new do |t|
  t.pattern = 'test/unit/*_test.rb'
end

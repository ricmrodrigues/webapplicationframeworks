class Student < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname, :mobile, :studentnumber
end

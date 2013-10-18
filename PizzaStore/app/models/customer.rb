class Customer < ActiveRecord::Base
  attr_accessible :age, :firstname, :lastname, :address1, :address2, :city, :county, :country
end

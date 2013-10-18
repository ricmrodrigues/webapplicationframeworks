class Order < ActiveRecord::Base
  attr_accessible :order_name

  has_many :items
end

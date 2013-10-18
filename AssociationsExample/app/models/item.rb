class Item < ActiveRecord::Base
  belongs_to :order
  attr_accessible :item_name
end

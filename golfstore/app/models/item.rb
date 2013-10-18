class Item < ActiveRecord::Base
  attr_accessible :brand, :category, :description, :image_url, :price, :title
end

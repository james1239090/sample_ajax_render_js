class Product < ActiveRecord::Base
 validates :title, presence: true
 validates :price, presence: true, numericality: true
end

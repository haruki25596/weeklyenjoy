class Order < ApplicationRecord
  
  belongs_to :customer
  has_many :items, through: :ordered_items
  has_many :ordered_items
  
end

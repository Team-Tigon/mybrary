class User < ActiveRecord::Base
  has_many :items
  has_many :loans
  has_many :borrowed_items, through: :loans, source: "item"
end



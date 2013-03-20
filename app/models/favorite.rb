class Favorite < ActiveRecord::Base
  
  attr_accessible :user_id, :book_id

  validate :book_id, :uniqueness => {:scope => :user_id }
  belongs_to :user
  belongs_to :book
end

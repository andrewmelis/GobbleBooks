class Comment < ActiveRecord::Base
  attr_accessible :body, :book_id, :user_id

  validates :body, :book_id, :user_id, :presence => true

  belongs_to :book
  belongs_to :user

end

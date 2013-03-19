class Book < ActiveRecord::Base
  attr_accessible :author_id, :title

  has_many :favorites
  has_many :comments
  has_many :users, :through => :favorites
  belongs_to :author
end

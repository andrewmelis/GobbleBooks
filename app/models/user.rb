class User < ActiveRecord::Base
  attr_accessible :name

  has_many :favorites
  has_many :books, :through => :favorites
end

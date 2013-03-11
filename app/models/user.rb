class User < ActiveRecord::Base

  attr_accessible :name, :password

  has_secure_password

  validates_uniqueness_of :name

  has_many :favorites
  has_many :books, :through => :favorites
end

class User < ActiveRecord::Base
  has_many :tasks
  has_many :topics, through: :tasks
end

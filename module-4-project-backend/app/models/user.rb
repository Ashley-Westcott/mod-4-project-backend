class User < ApplicationRecord
  has_many :tasks
  has_many :topics, through: :tasks
end

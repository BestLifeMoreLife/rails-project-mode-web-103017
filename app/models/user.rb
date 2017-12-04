class User < ApplicationRecord
  has_many :events
  has_many :favorites
  has_many :categories, through: :favorites
  has_many :user_comments
  has_many :comments, through: :user_comments

end
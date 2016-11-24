class Post < ActiveRecord::Base
  #This validates presence of title, and makes sure that the length is not more than 140 words
  #validates :title, presence: true, length: {maximum: 250}
  #This validates presence of body
  #validates :body, presence: true
  #validates :author, presence: true
  belongs_to :admin

  extend FriendlyId
  friendly_id :title, use: :slugged
end
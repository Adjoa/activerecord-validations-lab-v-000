class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} should be Fiction or Non-Fiction" }
  validates :title, inclusion: { in: %w( "Won't Believe" "Secret" "Top [number]" "Guess"),
      message: "%{value} should be clickbait-y" }
end


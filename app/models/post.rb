class Post < ActiveRecord::Base
  validates :title, presence: true
     message: "%{value} should be clickbait-y" }
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} should be Fiction or Non-Fiction" }

end

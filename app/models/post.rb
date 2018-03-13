class Post < ActiveRecord::Base
  validates :title, presence: true, inclusion: { in: %w( /\bWon't Believe\b/ /\bTrue Facts\b/ /\bSecret\b/ /\bTop [number]\b/ /\bGuess\b/),
     message: "%{value} should be clickbait-y" }
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} should be Fiction or Non-Fiction" }

end

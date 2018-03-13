class Post < ActiveRecord::Base
  validates :title, presence: true
     message: "%{value} should be clickbait-y" }
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} should be Fiction or Non-Fiction" }
  validate :clickbait_title?

  def clickbait_title?
    if expiration_date.present? && expiration_date < Date.today
      errors.add(:expiration_date, "can't be in the past")
    end
  end
  
end

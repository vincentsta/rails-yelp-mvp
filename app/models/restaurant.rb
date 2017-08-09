class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, inclusion: { in: self::CATEGORIES , allow_nil: false }

  def avg_rating
    current_ratings = self.reviews.map { |rew| rew.rating }
    total_rating = current_ratings.reduce(:+)
    return -1 if current_ratings.length == 0
    total_rating.fdiv(current_ratings.length)
  end

  def <=>(other)
    other.avg_rating <=> self.avg_rating
  end

end

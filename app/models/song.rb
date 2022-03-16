class Song < ApplicationRecord
  has_many :reviews
  has_many :super_fans, through: :reviews

  def self.most_popular
    Song.all.max_by { |song| song.reviews.count }
  end
end

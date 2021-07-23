class Song < ApplicationRecord
  has_many :reviews 
  has_many :super_fans, through: :reviews

  # has_many :super_fans => google aliasing Active Record relationships
  has_many :my_fans, class_name:  "SuperFan"


  # def with_reviews
  #   {
  #     id: self.id,
  #     name: self.name, 
  #     youtube_link: self.youtube_link,
  #     reviews: self.reviews.map do |review| 
  #       {
  #         rating: review.rating,
  #         comment: review.comment,
  #         super_name: review.super_fan.name
  #       }
  #     end
  #   }
  # end 


  def its_me
    "GREG"
  end 

  def self.most_popular
    self.all.max_by {|song| song.reviews.count}
  end 

  def json_obj
    {
      id: self.id,
      name: self.name,
      total_reviews: self.reviews.count,
      average_rating: self.reviews.average(:rating)
    }
  end 
end

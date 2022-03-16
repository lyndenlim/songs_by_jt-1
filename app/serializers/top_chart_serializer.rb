class TopChartSerializer < ActiveModel::Serializer
  attributes :id, :name, :total_reviews, :average_rating

  def total_reviews
    self.object.reviews.count
  end

  def average_rating
    self.object.reviews.average(:rating).to_f.round(2)
  end
end

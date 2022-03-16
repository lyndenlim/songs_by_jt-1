class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :super_fan_name, :song_id, :rating, :comment

  belongs_to :song
  belongs_to :super_fan

  def super_fan_name
    self.object.super_fan.name
  end
end

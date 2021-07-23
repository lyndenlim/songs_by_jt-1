class SongSerializer < ActiveModel::Serializer
  attributes :id, :name, :youtube_link, :its_me

  has_many :reviews, serializer: SongReviewSerializer
end

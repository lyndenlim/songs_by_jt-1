class SuperFanSerializer < ActiveModel::Serializer
  attributes :id, :name, :years_of_fandom, :song

  belongs_to :song
end

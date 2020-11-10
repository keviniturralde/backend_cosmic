class ArtistSerializer < ActiveModel::Serializer
  attributes :id, :name, :life_death
  has_many :paintings
end

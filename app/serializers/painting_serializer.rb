class PaintingSerializer < ActiveModel::Serializer
  attributes :id, :name, :year_created, :painting_inspiration, :painting_url
end

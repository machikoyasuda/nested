class Line
  include Mongoid::Document

  field :name, type: String
  field :color, type: String

  embeds_many :stations
end

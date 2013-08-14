class Line
  include Mongoid::Document

  field :name, type: String
  field :color, type: String
end

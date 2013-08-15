class Station
  include Mongoid::Document

  field :name, type: String

  embedded_in :line
end
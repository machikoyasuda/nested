Line.destroy_all

Line.create!(
  name: 'Red',
  color: 'F03B20',
  stations: [
    Station.new(name: "Red - One"),
    Station.new(name: "Red - Two")
  ]
)

Line.create!(
  name: 'Green',
  color: '33A02C',
  stations: [
    Station.new(name: "Green - Three"),
    Station.new(name: "Green - Four")
  ]
)

Line.create!(
  name: 'Blue',
  color: '1F78B4',
  stations: [
    Station.new(name: "Blue - Five"),
    Station.new(name: "Blue - Six")
  ]
)

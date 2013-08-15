Line.destroy_all

Line.create!(
  name: 'Red',
  color: 'F03B20',
  stations: [
    Station.new(name: "One"),
    Station.new(name: "Two")
  ]
)

Line.create!(
  name: 'Green',
  color: '33A02C',
  stations: [
    Station.new(name: "Three"),
    Station.new(name: "Four")
  ]
)

Line.create!(
  name: 'Blue',
  color: '1F78B4',
  stations: [
    Station.new(name: "Five"),
    Station.new(name: "Six")
  ]
)

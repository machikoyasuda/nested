require 'spec_helper'

describe 'data routing' do
  it 'routes /lines to lines#index' do
    expect(get: '/lines').to route_to(
        controller: 'lines',
        action: 'index'
      )
  end

  it 'routes /lines/:id to cats#show' do
    expect(get: '/lines/34').to route_to(
      controller: 'lines',
      action: 'show',
      id: '34'
    )
  end

  it 'routes /lines/:id/stations to stations#index' do
    expect(get: '/lines/34/stations').to route_to(
      controller: 'stations',
      action: 'index',
      line_id: '34'
    )
  end

  it 'routes /lines/:id/stations/:id to stations#show' do
    expect(get:'/lines/34/station/12').to route_to(
      controller: 'stations',
      action: 'show',
      id: '12',
      lines_id: '34'
    )
  end
end
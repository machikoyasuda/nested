require 'spec_helper'

describe Station do
  let(:station) { Station.new }

  describe 'attributes' do
    it 'belongs to a Line' do
      expect(station.line).to eql nil
    end

    it 'has a name' do
      station.name = 'One'

      expect(station.name).to eql 'One'
    end
  end
end
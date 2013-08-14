require 'spec_helper'

describe Line do
  # create global variable object :line
  let(:line) { Line.new }

  describe "attributes" do
    it "has a name" do
      line.name = 'Red'

      expect(line.name).to eql 'Red'
    end

    it "has a color" do
      line.color = 'F03B20'

      expect(line.color).to eql 'F03B20'
    end
  end
end
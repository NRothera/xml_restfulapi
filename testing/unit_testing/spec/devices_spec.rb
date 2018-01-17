require_relative './spec_helper'
require_relative '../../../schema/xml_parsing'

describe Devices do
  context 'Making sure the model works as intended' do

    before(:all) do
      DeviceXml.new
    end

    it 'should return Devices.all return as a hash object' do
      expect(Devices.all).to be_kind_of(Hash)
    end


  end
end

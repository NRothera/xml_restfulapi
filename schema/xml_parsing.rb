require 'nokogiri'

class DeviceXml

  attr_accessor :device

  def initialize
    @device = Nokogiri::XML(File.open('./mini-schema.xml'))
  end

  def get_devices
    device_names = []
    (@device.xpath('//name')).each do |name|
      device_names.push(name.text)
    end
    device_names
  end

  def find_device_name

  end


end

testing = DeviceXml.new
p testing.get_devices

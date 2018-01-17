require 'nokogiri'
require 'json'


class DeviceXml

  attr_accessor :device

  def initialize
    @device = Nokogiri::XML(File.open('mini_schema.xml'))
  end

  def get_device_names
    device_names = []
    @device.xpath('//name').each do |name|
      device_names.push(name.text)
    end
    device_names
  end

  def get_device_values
    device_values = []
    @device.xpath('//value').each do |value|
      device_values.push(value.text)
    end
    device_values
  end

  def get_device_notes
    device_notes = []
    @device.xpath('//notes').each do |note|
      device_notes.push(note.text)
    end
    device_notes
  end

  def devices_to_hash
    all_devices = {}
    index = 0
    get_device_names.each do |device|
      all_devices[device] = {:value => get_device_values[index], :notes => get_device_notes[index]}
      index += 1
    end
    all_devices
  end

end

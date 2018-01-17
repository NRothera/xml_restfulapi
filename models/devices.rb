require 'sinatra'
require_relative '../schema/xml_parsing'
require 'json'



class Devices

  attr_accessor :name, :value, :notes


  def self.all
    set_up_json = DeviceXml.new
    set_up_json.get_device_names
    set_up_json.get_device_values
    set_up_json.get_device_notes
    device_hash = set_up_json.devices_to_hash
    device_hash.to_json
  end

  def self.find(name)
    set_up_json = DeviceXml.new
    set_up_json.get_device_names
    set_up_json.get_device_values
    set_up_json.get_device_notes
    device_hash = set_up_json.devices_to_hash[name].to_json
  end


end

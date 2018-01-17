require_relative '../../../controllers/devices_controller'
require_relative '../../../models/devices'
require_relative '../../../schema/xml_parsing'

require 'sinatra'
require "sinatra/base"
require 'rack/test'
require 'pg'
require 'nokogiri'


RSpec.configure do|config|
  config.color = true
  config.formatter = :documentation
  config.include Rack::Test::Methods
end

require 'sinatra'
require_relative '../schema/xml_parsing'
require 'json'

class DevicesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '../')

  set :views, Proc.new { File.join(root, "views") }

  before do
    content_type 'application/json'
  end

  get '/' do
    @everything = Devices.all
  end

  get '/:name' do
    name = params[:name]
    @device = Devices.find(name)
  end





end

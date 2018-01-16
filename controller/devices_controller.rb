require 'sinatra'
require 'sinatra/namespace'
require_relative '../schema/xml_parsing'
require 'json'

class DevicesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '../')

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    'Hello'
  end

  before do
    content_type 'application/json'
  end

  get '/devices' do
    everything = Devices.all
  end

  get '/devices/:name' do
    name = params[:name]
    @device = Devices.find(name)

    erb :'show'
  end





end

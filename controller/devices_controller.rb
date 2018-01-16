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

  get '/devices' do
    everything = Devices.all
  end


end

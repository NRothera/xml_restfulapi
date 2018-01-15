require 'sinatra'

class DevicesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '../../')

  set :views, Proc.new { File.join(root, "views") }

  get '/' do
    'Hello'
  end

end

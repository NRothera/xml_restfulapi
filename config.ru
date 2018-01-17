require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/base'
require 'sinatra/namespace'
require 'rack/test'
require 'json'
require 'net/http'
require 'http'
require 'pg'
require 'rubygems'
require_relative './controllers/devices_controller'
require_relative './models/devices'


use Rack::MethodOverride

run Rack::Cascade.new ([
  DevicesController
  ])

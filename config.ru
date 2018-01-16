require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/base'
require 'sinatra/namespace'
require 'json'
require 'net/http'
require 'http'
require 'rubygems'
require_relative 'controller/devices_controller'
require_relative 'models/devices'


run Rack::Cascade.new ([
  DevicesController
  ])

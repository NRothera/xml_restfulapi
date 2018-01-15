require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra/base'
require 'json'
require 'net/http'
require 'http'
require 'rubygems'
require_relative 'controller/devices'


run Rack::Cascade.new ([
  DevicesController
  ])

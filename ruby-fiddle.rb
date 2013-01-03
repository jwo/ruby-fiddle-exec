require 'bundler/setup'
require 'sinatra'
require 'rack'
require 'rabl'
require './lib/riddle'

Rabl.register!
Rabl.configure do |config|
  config.include_json_root = false
end
configure { set :server, :puma }

get '/' do
  redirect "http://rubyfiddle.com"
end

post "/" do
  @riddle = Riddle.new.execute(params[:code])
  render :rabl, :riddle, :format => "json"
end

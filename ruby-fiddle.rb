require 'bundler/setup'
require 'sinatra'
require 'rack'
Sinatra::Application.reset!
use Rack::Reloader

require 'json'
require './lib/riddle'
require './lib/code_restriction_policy'

require 'rack/timeout'
use Rack::Timeout
Rack::Timeout.timeout = 1


get '/' do
	redirect "http://rubyfiddle.com"
end

post "/" do
  puts params[:code]
  if CodeRestrictionPolicy.new.valid?(params[:code])
    @riddle = Riddle.new
    @riddle.execute(params[:code])
    content_type :json
    {output: @riddle.output, exception: @riddle.exception, result: @riddle.result}.to_json
  else
    {output: "", exception: "", result: "RestrictedCodeException\r\nSystem Calls disabled"}.to_json
  end
end

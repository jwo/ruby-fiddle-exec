require 'bundler/setup'
require 'sinatra'
require 'rack'
Sinatra::Application.reset!
use Rack::Reloader

require 'json'
require './lib/riddle'

require 'rack/timeout'
use Rack::Timeout
Rack::Timeout.timeout = 1


get '/' do
	redirect "http://rubyfiddle.com"
end

post "/" do
	@riddle = Riddle.new
  puts params[:code]
	@riddle.execute(params[:code])
	content_type :json
	{output: @riddle.output, exception: @riddle.exception, result: @riddle.result}.to_json
end

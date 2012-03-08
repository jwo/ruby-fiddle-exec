require 'bundler/setup'
require 'sinatra'
require 'json'
require './lib/riddle'

require 'rack/timeout'
use Rack::Timeout
Rack::Timeout.timeout = 1

get '/' do
	redirect "http://rubyfiddle.heroku.com"
end

post "/" do
	@riddle = Riddle.new
	@riddle.execute(params[:code])
	content_type :json
	{output: @riddle.output, exception: @riddle.exception, result: @riddle.result}.to_json
end

require "sinatra"
require 'json'

get '/game/:id.json' do
	if params[:id] == "234567865432"
		content_type :json
		{ :response => {:id => '234567865432', :name => "Pupcas party", :venues => [
			{:id => 1, :lat => 50.081747, :long => 14.427189, :name => "Vaclavske Namesti", :level => "easy"},
			{:id => 2, :lat => 48.853094, :long => 16.053431, :name => "Namesti Republiky", :level => "easy"},
			{:id => 3, :lat => 50.087371, :long => 14.420820, :name => "Staromestske Namesti", :level => "easy"}
			]} }.to_json
		else
			status 404
			content_type :json
			{ :response => {:error => "Not found"} }.to_json
		end
	end
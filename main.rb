require 'sinatra'
require 'json'

get '/' do
  'Making the invisible visible'
end

get '/game/:id' do 
  gameid = params[:id]
  content_type :json
    { :key1 => 'Game id:'+ gameid, :key2 => 'Robert wins' }.to_json
end
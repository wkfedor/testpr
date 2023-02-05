require 'open-uri'
require 'net/https'
require 'uri'
require 'sinatra'

get '/' do
  p "главная страница параметры переданные в запросе:#{params[:id]}"
  sleep (5)
  halt 200
end

post '/' do
  p "главная страница параметры переданные в запросе:#{params.inspect}"
  sleep (5)
  halt 200
end

get '/400/:id' do
  p "параметры переданные в запросе:#{params[:id]}"
  sleep (5)
  halt 400
end

post '/400/:id' do
  p "post параметры переданные в запросе:#{params[:id]}"
  sleep (5)
  halt 400
end

get '/500/:id' do
  p "параметры переданные в запросе:#{params[:id]}"
  sleep (5)
  halt 500
end

get '/200/:id' do
  p "параметры переданные в запросе:#{params[:id]}"
  sleep (5)
  halt 200
end
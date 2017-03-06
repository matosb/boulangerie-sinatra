require 'sinatra'

# Ajout pour gestion BDD
require 'sinatra/activerecord'
require './config/environments' #database configuration
require './models/model'
require 'sinatra/flash'
enable :sessions

get '/' do
	erb :index
end

get '/index' do
	erb :index
end


get '/contact' do
	erb :contact
end

get '/test' do
	erb :test
end

post '/index' do

	@model = Model.new(params[:model])

	if @model.save
		flash[:success] = 'Votre commande est bien enregistrée'
		redirect '/index'
	else 
		"There is an error !"	
	end	
end

post '/newsletter' do
	email = params[:email]

	erb :index
end
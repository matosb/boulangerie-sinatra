require 'sinatra'

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
	prenom = params[:prenom]
	nom = params[:nom]
	notel = params[:notel]
# ici je peux stocker les informations récupérées dans le formulaire en BDD

	erb :index
end

post '/newsletter' do
	email = params[:email]
# ici je peux stocker les informations récupérées dans le formulaire en BDD

	erb :index
end
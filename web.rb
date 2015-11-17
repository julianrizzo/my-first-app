require 'sinatra'

set :public_folder, './app/'

get '/' do
	@title = "M8 Pix"
	
	erb :home
end
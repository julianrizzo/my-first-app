require 'sinatra'
require 'sinatra/activerecord'

require './models/post.rb'

set :public_folder, './app/'

get '/' do
	@title = "M8 Pix"

	@posts = Post.all.order(:id)

	erb :home
end
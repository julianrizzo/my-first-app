require 'sinatra'
require 'sinatra/activerecord'
require 'date'

require './models/post.rb'
require './helpers/date_helper.rb'

set :public_folder, './app/'

helpers DateHelper

get '/' do

	@title = "M8 Pix"

	@posts = Post.all.order(created_at: :desc)

	erb :home
end

get '/post/new' do
	erb :"posts/new"
end

post '/post/create' do
	img_url = params[:img_url]

	if img_url.empty?
		@error = "Please provide a valid Url."
		erb :"posts/new"
	else
		Post.create(img_url: img_url)
		redirect '/'
	end
end
#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:pizzashop.db"

after do
  ActiveRecord::Base.clear_active_connections!
end

class Product < ActiveRecord::Base
end


get '/' do
	@products = Product.all
	erb :index
end

get '/about' do
	erb :about
end

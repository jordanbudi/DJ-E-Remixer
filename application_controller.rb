require 'sinatra'
require 'bundler'
Bundler.require
require_relative 'models/model.rb'


class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

	post '/dexter' do
		@smart_sentence = changing_words(params[:sentence])
		erb :dexter
	end

end
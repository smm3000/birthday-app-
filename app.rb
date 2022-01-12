require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birth_date'

class Birthday < Sinatra::Base 
    enable :sessions
    configure :development do 
        register Sinatra::Reloader 
    end 

    get '/' do
        erb :index
    end

    post '/info' do
        session[:name] = params[:name]
        session[:birthday_day] = params[:birthday_day]
        session[:birthday_month] = params[:birthday_month]
        redirect '/message'
    end 

    get '/message' do
        @name = session[:name]
        @day = session[:birthday_day]
        @month = session[:birthday_month]
        @BirthDate = BirthDate.new(@day,@month)
        erb :message
    end 



    run! if app_file == $0
end 
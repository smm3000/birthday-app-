require 'sinatra/base'
require 'sinatra/reloader'

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
        session[:birthday] = params[:birthday]
        redirect '/message'
    end 

    get '/message' do
        @name = session[:name]
        @birthday = session[:birthday]
        erb :message
    end 

    

    run! if app_file == $0
end 
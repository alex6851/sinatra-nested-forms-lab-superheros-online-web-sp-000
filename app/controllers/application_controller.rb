require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    get '/' do
        erb :user_input
    end

    post '/teams' do
      binding.pry
        @team = Team.new(params[:team])
        params[:team][:heroes].each do |details|
          Hero.new(details)
        end
          erb :show
        end


end

require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = params[:pirate]
      @ship_1 = @pirate[:ships][0]
      @ship_2 = @pirate[:ships][1]
      erb :'pirates/show'
    end

  end
end

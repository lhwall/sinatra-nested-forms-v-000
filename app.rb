require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get "/" do
      erb :"/pirates/new"
    end

    get "/new" do
        erb :"pirates/new"
    end

    post "/pirates" do
      #binding.pry
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      #binding.pry
@ships = Ship.all
#binding.pry
      erb :"pirates/show"

    end



  end
end

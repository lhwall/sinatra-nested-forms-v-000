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
      @pirate = Pirate.new(params[:pirate])
binding.pry
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      binding.pry
@ships = Ship.all
      erb :"pirates/show"

    end



  end
end

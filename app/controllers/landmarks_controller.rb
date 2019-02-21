class LandmarksController < ApplicationController

  get "/landmarks" do
    @landmarks = Landmark.all
    erb :"landmarks/index"
  end

  get "/landmarks/new" do
    @figures = Figure.all
    # binding.pry
    erb :"landmarks/new"
  end

  post "/landmarks" do
    # binding.pry
     landmark = Landmark.create(params[:landmark])
     redirect to "/landmarks/#{landmark.id}"
   end
end

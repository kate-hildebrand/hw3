class PlacesController < ApplicationController

    def index
        @places = Place.all
    end

    def show
        @place = Place.find_by({ "id" => params["id"] })
        #need to figure out why the below code line is failing 
        @posts = Post.where({"place_id" => @place["id"]})
    end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new
        @place["name"] = params["place"]["name"]
        @place.save
        redirect_to "/places"
      end
    end 



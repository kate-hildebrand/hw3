class PostsController < ApplicationController


    def new
        @post =Post.new
        @place = Place.find_by({"id" => params["place_id"]})
        @post["place_id"] = @place["id"]
    end

    def create
        puts params
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["description"] = params["post"]["description"]
        @post["place_id"] = params["post"]["place_id"]
        @post.save
        redirect_to "/places/#{@post["place_id"]}"
    end
 
end

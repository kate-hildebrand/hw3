class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end

    def new
        @posts =Post.new
    end

    def new
    end

    def create
        @post = Post.new
        @post["title"] = params["post"]["title"]
        @post["posted_on"] = params["post"]["posted_on"]
        @post["description"] = params["post"]["description"]
        @post.save
        redirect_to "/places" 
    #redirect
    end 

    def create
    #redirect 
    end 
end

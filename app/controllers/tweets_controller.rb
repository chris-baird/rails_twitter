class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def create
    @tweet = Tweet.new(params.require(:tweet).permit(:handle, :content))

     if @tweet.save
       redirect_to tweets_path
     else
       render :new
     end
  end

  def new
    @tweet = Tweet.new
  end

  def edit

  end

  def show
    @tweet = Tweets.find(params[:id])
  end

  def update

  end

  def destroy

  end

end

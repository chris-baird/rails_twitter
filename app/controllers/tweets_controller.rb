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
    @tweet = Tweet.find(params[:id])
  end

  def show
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])

      if @tweet.update_attributes(params.require(:tweet).permit(:handle, :content))
        redirect_to tweets_path
      else
        render :edit
      end
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweets_path
  end

end

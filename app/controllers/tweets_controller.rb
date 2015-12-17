class TweetsController < ApplicationController

  def index
    @tweet = Tweet.new
    @tweets = Tweet.all
  end

  def create
    Tweet.create(tweet_params)
    redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end

end



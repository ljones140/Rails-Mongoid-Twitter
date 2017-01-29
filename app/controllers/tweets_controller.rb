class TweetsController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
   @tweet_view_model = Struct.new(:new_tweet, :all_tweets).new(Tweet.new, Tweet.all)
  end

  def create
    current_user.tweets.create(tweet_params)
    redirect_to tweets_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end
end

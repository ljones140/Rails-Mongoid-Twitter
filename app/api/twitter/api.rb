module Twitter
  class API < Grape::API
    version 'v1', using: :header, vendor: 'twitter'
    format :json
    prefix :api

    resource :posts do
      get :public_timeline do
        Tweet.all
      end
    end
  end
end

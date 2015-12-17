class Tweet
  include Mongoid::Document
  field :body, type: String
end

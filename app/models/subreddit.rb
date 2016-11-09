class Subreddit < ApplicationRecord
    has_many :users
    belongs_to :user
    has_many :posts
end

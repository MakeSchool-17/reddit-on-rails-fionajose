class Post < ApplicationRecord
    belongs_to :user
    has_many :comments
    belongs_to :subreddit 

end

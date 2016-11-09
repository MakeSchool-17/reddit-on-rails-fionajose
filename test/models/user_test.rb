require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
      @user = User.create(email: "jose@jose.com")

      @subreddit = Subreddit.create(title: "DataIsBeautiful", user: @user)
      @subreddit2 = Subreddit.create(title: "Futurology", user: @user)

      @post = Post.create(title: "Hello My Dudes", content: "Radical-ness, my doods", user: @user)
  end

  test "should be valid" do
      assert @user.valid?
  end

  # test "should have post" do
  #   #   @jose = User.create(email: "email")
  #   #   @post = Post.create(title: "this is it", content: "content", user: @jose)
  #     assert_equal 1, @user.posts.size
  # end

  test "user has a subreddit" do
      assert_equal 2, @user.subreddits.size
  end

  # test "user has posts" do
  #     assert_equal 1, @user.posts.size
  # end

end

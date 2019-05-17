require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @post = Post.new(title: "An Example Title", body: "An example post body")
  end

  test "should be valid" do
    assert @post.valid?
  end

  test "title should not be blank" do
    @post.title = "       "
    assert_not @post.valid?
  end

  test "title should not be too long" do
    @post.title = "a" * 251
    assert_not @post.valid?
  end

  test "body should not be blank" do
    @post.body = "     "
    assert_not @post.valid?
  end
end

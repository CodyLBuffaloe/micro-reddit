require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @comment = Comment.new(body:"A comment's body")
  end

  test "should be valid" do
    assert @comment.valid?
  end

  test "should not be empty" do
    @comment.body = "      "
    assert_not @comment.valid?
  end
end

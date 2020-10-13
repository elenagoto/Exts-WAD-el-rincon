require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'that first created Post is first on the list' do
    first_post = Post.new title: 'This is a title'
    first_post.save!

    second_post = Post.new title: 'This is another title'
    second_post.save!

    assert_equal(first_post, Post.all.first)
  end

  test 'update_at is changed after updating Post title' do
    post = Post.new title: 'This is the first title'
    post.save!
    first_updated_at = post.updated_at

    post.title = 'This is a different title'
    post.save!

    refute_equal(post.updated_at, first_updated_at)
  end

  test 'validation for Post without title' do
    post = Post.new

    refute post.valid?
  end

end

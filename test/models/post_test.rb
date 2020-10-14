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

  # Testing scopes
  
  test 'search one matching result' do
    post = Post.new title: 'This is a post'

    post.save!
    result = Post.search('This')
    assert_equal result.length, 1
  end

  test 'search matches tags' do
    post = Post.new title: 'This is a post'
    tag = Tag.new name: 'This is a tag'
    post.tags << tag
    post.save!
    result = Post.search('tag')
    assert_equal result.length, 1
  end

  test 'no matching result' do
    post = Post.new title: 'This is a post'
    post.save!
    assert_empty Post.search('Hello')
  end

  test 'search matches both title and tags' do
    post = Post.new title: 'Tests are important'
    tag = Tag.new name: 'programming'
    post.tags << tag
    post.save!

    post_2 = Post.new title: 'Use Capybara'
    tag_2 = Tag.new name: 'test'
    post_2.tags << tag
    post_2.tags << tag_2
    post_2.save!

    result = Post.search('test')
    assert_equal result.length, 2
  end

end

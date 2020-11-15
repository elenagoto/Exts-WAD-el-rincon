require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'that first created Post is first on the list' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'

    first_post = Post.new title: 'This is a title',
                          body: 'this is the body of the post',
                          user: user
    first_post.save!

    second_post = Post.new title: 'This is another title',
                           body: 'this is the body of the post',
                           user: user
    second_post.save!

    assert_equal(first_post, Post.all.first)
  end

  test 'update_at is changed after updating Post title' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'

    post = Post.new title: 'This is the first title',
                    body: 'this is the body of the post',
                    user: user
    post.save!
    first_updated_at = post.updated_at

    post.title = 'This is a different title'
    post.save!

    refute_equal(post.updated_at, first_updated_at)
  end

  test 'validation for Post without title' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new user: user,
                    body: 'this is the body of the post'

    refute post.valid?
  end

  test 'validation for Post without user' do
    post = Post.new title:'This is a title',
                    body: 'this is the body of the post'

    refute post.valid?
  end

  # Testing scopes

  test 'search one matching result' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'This is a post',
                    body: 'body of the post',
                    user: user
    post.save!

    result = Post.search('This')
    assert_equal result.length, 1
  end

  test 'search matches tags' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'This is a post',
                    body: 'this is the body of the post',
                    user: user
    tag = Tag.new name: 'This is a tag'
    post.tags << tag
    post.save!
    result = Post.search('tag')
    assert_equal result.length, 1
  end

  test 'no matching result' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'This is a post',
                    body: 'this is the body of the post',
                    user: user
    post.save!
    assert_empty Post.search('Hello')
  end

  test 'search matches both title and tags' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'Tests are important',
                    body: 'this is the body of the post',
                    user: user
    tag = Tag.new name: 'programming'
    post.tags << tag
    post.save!

    post2 = Post.new title: 'Use Capybara',
                     body: 'this is the body of the post',
                     user: user
    tag2 = Tag.new name: 'test'
    post2.tags << [tag, tag2]
    post2.save!

    result = Post.search('test')
    assert_equal result.length, 2
  end

end

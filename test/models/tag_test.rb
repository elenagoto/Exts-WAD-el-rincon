require 'test_helper'

class TagTest < ActiveSupport::TestCase
  test 'that Tag name is saved as lower case' do
    tag = Tag.new
    name = 'Tag name'
    tag.name = name
    tag.save!

    refute_equal(tag.name, name)
    assert_equal(tag.name, name.downcase)
  end

  test 'that Tag name is striped when saving' do
    tag = Tag.new
    name = '  tag name    '
    tag.name = name
    tag.save!

    refute_equal(tag.name, name)
    assert_equal(tag.name, name.strip)
  end

  test 'cascade saving' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'This is a title',
                    body: 'this is the body of the post',
                    user: user
    post.save!
    3.times do |i|
      tag = Tag.new name: "tag #{i + 1}"
      tag.save!
      post.tags << tag
    end

    assert_equal post.tags.count, Tag.all.count
  end
end

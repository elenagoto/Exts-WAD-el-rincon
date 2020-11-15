require "application_system_test_case"

class SearchesTest < ApplicationSystemTestCase
  test 'search page displays the right results' do
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

    post3 = Post.new title: 'Use Ruby on rails',
                     body: 'this is the body of the post',
                     user: user
    post3.tags << tag
    post3.save!

    visit visit '/'
    click_on 'Buscar'

    fill_in('q', with: 'test').send_keys :enter
    assert page.has_content? 'Tests are important'
    assert page.has_content? 'Use Capybara'
    refute page.has_content? 'Use Ruby on rails'
  end

  test 'search term is displayed in URL' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: 'Tests are important',
                    body: 'this is the body of the post',
                    user: user
    tag = Tag.new name: 'programming'
    tag_2 = Tag.new name: 'Test'
    post.tags << [tag, tag_2]
    post.save!

    visit '/'
    click_on 'Buscar'

    fill_in('q', with: 'test').send_keys :enter
    assert page.has_content? 'Test'
    assert current_url.include? 'q=test'
  end
end

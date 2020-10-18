require "application_system_test_case"

class SearchesTest < ApplicationSystemTestCase
  test "search page displays the right results" do
    post = Post.new title: 'Tests are important'
    tag = Tag.new name: 'programming'
    post.tags << tag
    post.save!

    post_2 = Post.new title: 'Use Capybara'
    tag_2 = Tag.new name: 'test'
    post_2.tags << [tag, tag_2]
    post_2.save!

    post_3 = Post.new title: 'Use Ruby on rails'
    post_3.tags << tag
    post_3.save!

    visit visit '/'
    click_on 'Buscar'

    fill_in('q', with: 'test').send_keys :enter
    assert page.has_content? 'Tests are important'
    assert page.has_content? 'Use Capybara'
    refute page.has_content? 'Use Ruby on rails'
  end

  test "search term is displayed " do
    post = Post.new title: 'Tests are important'
    tag = Tag.new name: 'programming'
    tag_2 = Tag.new name: 'test'
    post.tags << [tag, tag_2]
    post.save!

    visit visit '/'
    click_on 'Buscar'

    fill_in('q', with: 'test').send_keys :enter
    assert page.has_content? 'test'
    assert current_url.include? 'q=test'
  end
end

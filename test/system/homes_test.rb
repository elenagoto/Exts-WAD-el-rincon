require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    3.times do |i|
      post = Post.new title: "Default title for post # #{i + 1}",
                      user: user,
                      image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
      post.save!
    end
    visit '/'
  
    assert_selector "h1", text: "Destacado"
  end
end

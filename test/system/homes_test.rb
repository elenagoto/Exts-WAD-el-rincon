require "application_system_test_case"

class HomesTest < ApplicationSystemTestCase
  test "visiting the index" do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    3.times do |i|
      post = Post.new title: "Default title for post ##{i + 1}",
                      user: user,
                      image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png',
                      body: 'Cotton candy cake brownie danish carrot cake sweet halvah chocolate bar. Pastry pie lemon drops sweet roll carrot cake wafer. Marzipan tiramisu jujubes gingerbread. Donut sweet roll topping apple pie cookie. Wafer cookie toffee cupcake sugar plum cupcake. Pie toffee macaroon pudding cupcake cotton candy. Bear claw chocolate cake jelly donut tart chocolate cake. Gummies brownie carrot cake caramels cookie cake.'
      post.save!
    end
    visit '/'
  
    assert_selector "h1", text: "Destacado"
    assert page.has_content? 'Default title for post #1'
    assert page.has_content? 'Default title for post #2'
    assert page.has_content? 'Default title for post #3'
  end
end

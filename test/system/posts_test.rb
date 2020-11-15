require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test "create a new post" do
    user = User.new name: 'User name',
                    username: 'user',
                    email: 'user@email.com',
                    password: 'password',
                    role: 'author'
    post = Post.new title: "Default title for post",
                    user: user,
                    body: 'this is the body of the post',
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    visit '/'
    click_link 'Iniciar Sesión', match: :first
    fill_in 'Correo Electrónico', with: 'user@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first

    visit new_post_path

    assert page.has_content? 'Nuevo artículo'

    fill_in 'Título', with: 'Este es el título del post'
    fill_in 'Contenido', with: 'Sweet cupcake cotton candy ice cream dessert topping powder carrot cake bonbon. Bonbon tiramisu jujubes bonbon cheesecake gummies bonbon lollipop biscuit. Croissant tart dessert croissant ice cream lemon drops. Lollipop brownie donut jujubes. Candy canes powder dessert lollipop powder pastry brownie cake biscuit. Gingerbread brownie chocolate bar chocolate cake icing powder cheesecake. Halvah cupcake bonbon apple pie. Cotton candy liquorice chocolate cake brownie bonbon. Cookie cheesecake chocolate cake candy cookie. Fruitcake ice cream cheesecake.'
    click_button 'Create Post', match: :first

    assert page.has_content? 'Este es el título del post'
  end

  test "error message for empty title" do
    user = User.new name: 'User name',
                    username: 'user',
                    email: 'user@email.com',
                    password: 'password',
                    role: 'author'
    post = Post.new title: "Default title for post",
                    user: user,
                    body: 'this is the body of the post',
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    visit '/'
    click_link 'Iniciar Sesión', match: :first
    fill_in 'Correo Electrónico', with: 'user@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first

    visit new_post_path

    assert page.has_content? 'Nuevo artículo'

    
    fill_in 'Contenido', with: 'Sweet cupcake cotton candy ice cream dessert topping powder carrot cake bonbon. Bonbon tiramisu jujubes bonbon cheesecake gummies bonbon lollipop biscuit. Croissant tart dessert croissant ice cream lemon drops. Lollipop brownie donut jujubes. Candy canes powder dessert lollipop powder pastry brownie cake biscuit. Gingerbread brownie chocolate bar chocolate cake icing powder cheesecake. Halvah cupcake bonbon apple pie. Cotton candy liquorice chocolate cake brownie bonbon. Cookie cheesecake chocolate cake candy cookie. Fruitcake ice cream cheesecake.'
    click_button 'Create Post', match: :first

    assert page.has_content? "Title can't be blank"
  end
end

require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "anonymous user can't create a post" do
    visit new_post_path

    refute page.has_content? 'Nuevo artículo '
    assert page.has_content? 'Iniciar Sesión'
  end

  test "registered user can't create a post" do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: "Default title for post",
                    user: user,
                    body: 'this is the body of the post',
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    visit new_session_path
    fill_in 'Correo Electrónico', with: 'user@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first

    visit new_post_path

    refute page.has_content? 'Nuevo artículo '
    assert page.has_content? 'Destacado'
  end

  test "authors user can create a post" do
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
    assert page.has_content? 'User name'
  end

  test "admin can delete other users" do
    admin = User.new username: 'admin',
                    email: 'admin@email.com',
                    password: 'password',
                    role: 'admin'
    admin.save!

    user2 = User.new username: 'user2',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: "Default title for post",
                    user: user2,
                    body: 'this is the body of the post',
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    user3 = User.new username: 'user3',
                    email: 'user2@email.com',
                    password: 'password'
    user3.save!

    visit new_session_path
    fill_in 'Correo Electrónico', with: 'admin@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first

    visit users_path

    assert page.has_content? 'admin'
    assert page.has_content? 'user2'
    assert page.has_content? 'user3'

    within '#user-2' do
      click_link 'Borrar', match: :first
    end

    assert page.has_content? 'admin'
    assert page.has_content? 'user3'
    refute page.has_content? 'user2'
  end
end

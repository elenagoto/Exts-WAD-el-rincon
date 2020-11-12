require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  test 'sign up creates a User' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: "Default title for post",
                    user: user,
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!
    
    visit new_user_path
    fill_in 'Nombre', with: 'John Smith'
    fill_in 'Usuario', with: 'littlejohn'
    fill_in 'Correo Electrónico', with: 'john@elrincon.ch'
    fill_in 'Contraseña', with: 'password'
    fill_in 'Confirmación de la contraseña', with: 'password'

    click_button 'Registrarse', match: :first
    assert_equal User.all.length, 2
    assert_equal User.last.email, 'john@elrincon.ch'
  end

  test 'log in does not create a User' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: "Default title for post",
                    user: user,
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    visit new_session_path
    fill_in 'Correo Electrónico', with: 'user@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first
    assert_equal User.all.length, 1
  end

  test 'logout logs out user' do
    user = User.new username: 'user',
                    email: 'user@email.com',
                    password: 'password'
    post = Post.new title: "Default title for post",
                    user: user,
                    image_url: 'https://www.blogtyrant.com/wp-content/uploads/2017/02/how-to-write-a-good-blog-post.png'
    post.save!

    visit new_session_path
    fill_in 'Correo Electrónico', with: 'user@email.com'
    fill_in 'Contraseña', with: 'password'
    click_button 'Iniciar Sesión', match: :first

    assert page.has_content?('Cerrar Sesión')

    click_on 'Cerrar Sesión', match: :first

    refute page.has_content?('Cerrar Sesión')
    assert page.has_content?('Iniciar Sesión')
  end
end

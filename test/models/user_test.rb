require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'downcase_email method' do
    user = User.new email: 'nEw@ElRincON.Ch',
                    username: 'User',
                    password: 'password'
    user.save!

    assert user.valid?
    assert_equal User.first.email, 'new@elrincon.ch'
  end

  test 'default_role method' do
    user = User.new email: 'new@elrincon.ch',
                    username: 'User',
                    password: 'password'
    user.save!

    assert user.valid?
    assert_equal User.first.role, 'registered'
  end

  test 'default_role method does not change assigned role' do
    user = User.new email: 'new@elrincon.ch',
                    username: 'User',
                    password: 'password',
                    role: 'admin'
    user.save!

    assert user.valid?
    assert_equal User.first.role, 'admin'
  end

  test 'user can only be admin or registered' do
    user = User.new email: 'new@elrincon.ch',
                    username: 'User',
                    password: 'password',
                    role: 'no role'
    user.save
    refute user.valid?
  end
end

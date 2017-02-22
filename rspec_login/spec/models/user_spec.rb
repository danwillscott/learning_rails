require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @pass  = {first_name: 'Daniel', last_name: 'Scott', email: 'danwillscott@gmail.com', password: '7599black', password_confirmation: '7599black' }
    @fail1 = {last_name: 'Scott', email: 'danwillscott@gmail.com', password: '7599black', password_confirmation: '7599black' }
    @fail2 = {first_name: 'Daniel', email: 'danwillscott@gmail.com', password: '7599black', password_confirmation: '7599black' }
    @fail3 = {first_name: 'Daniel', last_name: 'Scott', email: 'danwillscott', password: '7599black', password_confirmation: '7599black' }
    @fail4 = {first_name: 'Daniel', last_name: 'Scott', email: 'danwillscott@gmail.com', password: 'k', password_confirmation: 'k' }
    @fail5 = {first_name: 'Daniel', last_name: 'Scott', email: 'danwillscott@gmail.com', password: '7599black', password_confirmation: 'black' }
    @login = {password: '7599black', email: 'danwillscott@gmail.com'}
  end
  it 'Test first_name fail' do
    user = User.register(@fail1)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(["First name can't be blank"])
  end
  it 'Test last_name fail' do
    user = User.register(@fail2)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(["Last name can't be blank"])
  end
  it 'Test email unique fail' do
    user = User.register(@pass)
    user.save
    user = User.register(@pass)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(['Email has already been taken'])
  end
  it 'Test email regex fail' do
    user = User.register(@fail3)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(['Email is invalid'])
  end
  it 'Test password length fail' do
    user = User.register(@fail4)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(['Password is too short (minimum is 6 characters)'])
  end
  it 'Test password confirm does not match fail' do
    user = User.register(@fail5)
    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(["Password confirmation doesn't match Password", "Password confirmation doesn't match Password"])
  end
  it 'test login' do
    user = User.register(@pass)
    user.save
    user = User.log_in(@login)
    expect(user).to eq(true)
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end

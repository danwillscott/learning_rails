require 'rails_helper'

RSpec.describe '#User validation' do
  it 'ensure validation of name' do
    user = User.new(name: '')
    user.valid?
    expect(user.errors[:name].any?).to eq(true)
  end
  it 'ensure email existance' do
    user = User.new(email: '')
    user.valid?
    expect(user.errors[:email].any?).to eq(true)
  end
  it 'ensure email validation' do
    emails = %w(kobe@lakers.com kobe.bryant@lakers.com)
    emails.each do |email|
      user = User.new(email: email)
      user.valid?
      expect(user.errors[:email].any?).to eq(false)
    end
  end
  it 'ensure email format validation' do
    emails = %w[@ user@ @example.com]
    emails.each do |email|
      user = User.new(email: email)
      user.valid?
      expect(user.errors[:email].any?).to eq(true)
    end
  end
  it 'ensure email uniqueness' do
    user1 = User.create(name:'kobe', email: 'kobe@lakers.com', password: 'password', password_confirmation: 'password')
    user2 = User.new(email: user1.email.upcase)
    user2.valid?
    expect(user2.errors[:email].first).to eq('has already been taken')
  end
  it 'ensure password validation' do
    user = User.new(password: '')
    user.valid?
    expect(user.errors[:password].any?).to eq(true)
  end
  it 'ensure password confirmation' do
    user = User.new(password: 'password', password_confirmation: 'not password')
    user.valid?
    expect(user.errors[:password_confirmation].first).to eq("doesn't match Password")
  end
  it 'ensure password to be encrypted' do
    user = User.create(name:'kobe', email: 'kobe@lakers.com', password: 'password', password_confirmation: 'password')
    expect(user.password_digest.present?).to eq(true)
    expect(user.password_digest).to_not eq('password')
  end
end

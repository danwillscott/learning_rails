require 'rails_helper'

RSpec.describe '#User Model functionality', type: :model do
  it '.new #User no error' do
    user = User.new(name:'dan', budget: 500)
    expect(user.save).to eq(true)
  end
  it 'ensure not blank failure on budget' do
    user = User.new(name:'dan')
    expect(user.save).to eq(false)
    expect(user.update(budget: 1000)).to eq(true)
    expect(user.budget).to eq(1000)
    expect(user.name).to eq('dan')
  end
  it 'ensure not int failure on budget' do
    user = User.new(name:'dan', budget: 'a lot')

    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(['Budget is not a number'])
    expect(user.update(budget: 1000)).to eq(true)
    expect(user.budget).to eq(1000)
  end
  it 'ensure not blank failure on name' do
    user = User.new(budget: 1000)

    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(["Name can't be blank"])
    expect(user.name).to eq(nil)
  end
  it 'ensure not blank failure on all fields' do
    user = User.new()

    expect(user.save).to eq(false)
    expect(user.name).to eq(nil)
    expect(user.budget).to eq(nil)
  end
  it 'uniqueness of name' do
    user1 = User.new(name:'dan', budget: 500)
    user2 = User.new(name:'dan', budget: 500)
    expect(user1.save).to eq(true)

    expect(user2.save).to eq(false)
  end
  it 'ensure minimum budget requirements' do
    user = User.new(name:'Dan', budget: 50)

    expect(user.save).to eq(false)
    expect(user.errors.full_messages).to eq(['Budget must be greater than 100'])
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end

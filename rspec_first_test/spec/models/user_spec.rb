require 'rails_helper'
# require 'User'
# require_relative '../../app/models/user.rb'

RSpec.describe User, type: :model do
  it 'should validate ALL Fields on save' do
    user = User.new(name:'Dan', pet_name:'Gaia', age:'30', pet_age: 5)
    expect(user.save).to eq(true)
  end

  it 'should FAIL validate User Name' do
    user = User.new(pet_name:'Gaia', age:'30', pet_age: 5)

    expect(user.save).to eq(false)
  end

  it 'should FAIL validate User Pet Name' do
    user = User.new(name:'Dan', age:'30', pet_age: 5)

    expect(user.save).to eq(false)
  end
  it 'should FAIL validate User Age an Int' do
    user = User.new(name:'Dan', pet_name:'Gaia', pet_age: 5)
    expect(user.save).to eq(false)
  end
  it 'should FAIL validate User pet Age an Int' do
    user = User.new(name:'Dan', pet_name:'Gaia', age:'30')
    expect(user.save).to eq(false)
  end
  # pending "add some examples to (or delete) #{__FILE__}"
end

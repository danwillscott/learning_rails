require 'rails_helper'

RSpec.describe Expense, type: :model do

  it 'ensure not blank failure on spent ' do
    User.destroy_all
    user = User.create!(name: 'Daniel', budget: 1000)
    user.save!
    expect(user.id).to eq (2)
    expense = Expense.new(product: 'Star Bucks', user: user)

    expect(expense.save).to eq(false)
    expect(expense.errors.full_messages).to eq(['Spent is not a number'])
  end
  it 'ensure not blank failure on product' do
    user = User.create(name: 'Daniel', budget: 1000)
    expense = Expense.new(spent: 10, user: user)

    expect(expense.save).to eq(false)
    expect(expense.product).to eq(nil)
  end
  it 'ensure valid #User is passed to #Expense' do
    user = User.new()
    user.save
    expect(user.save).to eq(false)
    expense = Expense.new(spent: 10, product: 'Star Bucks', user: user)
    expect(expense.save).to eq(false)
    expect(expense.user).not_to eq(true)
    expect(expense.errors.full_messages).to eq(['User is invalid'])
  end

  it 'ensure #Expense reduces #User budget' do
    #spent
    #product
    User.destroy_all
    user = User.create(name: 'Daniel', budget: 1000)
    expense = Expense.new(spent: 10, product: 'Star Bucks', user: user)
    expect(expense.save).to eq(true)

    expect(expense.user.budget).to eq(990)

  end
  it 'ensure User.name is callable' do
    user = User.create(name: 'Daniel', budget: 1000)
    expense = Expense.create(spent: 10, product: 'Star Bucks', user: user)
    expect(user.name).to eq('Daniel')
    expect(expense.user.name).to eq('Daniel')
  end


  # pending "add some examples to (or delete) #{__FILE__}"
end

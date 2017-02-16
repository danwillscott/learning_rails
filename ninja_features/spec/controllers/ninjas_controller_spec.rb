require 'rails_helper'

RSpec.describe NinjasController, type: :controller do

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end

require 'rails_helper'
feature 'guest user creates an account' do
  scenario 'Route to new page with form submit' do
    visit '/'
    fill_in 'name', with: 'Dan'
    fill_in 'description', with: 'This is a great description for something'
    # fill_in 'user_email', with: 'foo@bar.com'
    click_button 'submit'
    expect(page).to have_content 'Form submitted'
  end
  scenario 'Route to new page Fail Name requirements' do
    visit '/'
    fill_in 'name', with: ''
    fill_in 'description', with: 'This is a great description for something'
    # fill_in 'user_email', with: 'foo@bar.com'
    click_button 'submit'
    expect(page).to_not have_content 'Form submitted'
    expect(page).to have_content 'be blank'

  end
  scenario 'Route to new page Fail description requirements' do
    visit '/'
    fill_in 'name', with: 'Dan'
    fill_in 'description', with: ''
    click_button 'submit'
    expect(page).to_not have_content 'Form submitted'
    expect(page).to have_content 'be blank'
  end
end


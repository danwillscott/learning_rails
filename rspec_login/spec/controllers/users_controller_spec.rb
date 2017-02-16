require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #registered" do
    it "returns http success" do
      get :registered
      expect(response).to have_http_status(:success)
    end
  end

end

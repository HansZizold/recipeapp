require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /users' do
    before(:each) do
      @fake_user = User.create(name: 'Jesse', email: 'jesse@hotmail.com', password: '123456')

      get '/users'
    end

    it 'should assign all the users to @users' do
      expect(assigns(:users)).to eq([@fake_user])
    end

    it 'returns an http success response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      expect(response).to render_template('users/index')
    end
  end

  describe 'GET /users/:user_id' do
    before(:each) do
      @fake_user = User.create(name: 'Jesse', email: 'jesse@hotmail.com', password: '123456')

      get "/users/#{@fake_user.id}"
    end

    it 'should assign the correct user to @user' do
      expect(assigns(:user)).to eq(@fake_user)
    end

    it 'returns an http success response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      expect(response).to render_template('users/show')
    end
  end
end

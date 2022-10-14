require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /users/:user_id/posts' do
    before(:each) do
      @fake_user = User.create(name: 'Jesse', email: 'jesse@hotmail.com', password: '123456')

      @fake_post = Post.create(title: 'testing', author: @fake_user, text: 'testing')

      get "/users/#{@fake_user.id}/posts"
    end

    it 'should assign all the user posts to @posts' do
      user_posts = Post.by_author(@fake_user)

      expect(assigns(:posts)).to eq(user_posts)
    end

    it 'returns an http success response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      expect(response).to render_template('posts/index')
    end
  end

  describe 'GET /users/:user_id/posts/:post_id' do
    before(:each) do
      @fake_user = User.create(name: 'Mr.Test', email: 'testing.png', bio: 'Testing.')

      @fake_post = Post.create(title: 'testing', author: @fake_user, text: 'testing')

      get "/users/#{@fake_user.id}/posts/#{@fake_post.id}"
    end

    it 'should assign the correct user post to @post' do
      expect(assigns(:post)).to eq(@fake_post)
    end

    it 'returns an http success response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      expect(response).to render_template('posts/show')
    end
  end
end

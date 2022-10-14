require 'rails_helper'

RSpec.describe 'Root', type: :request do
  describe 'GET /' do
    before(:each) { get '/' }

    it 'returns an http success response' do
      expect(response).to have_http_status(:success)
    end

    it 'renders the correct template' do
      expect(response).to render_template('users/index')
    end
  end
end

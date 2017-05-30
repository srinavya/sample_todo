require 'rails_helper'

RSpec.describe PagesController, type: :controller do

  describe 'GET index' do
     it 'returns 200 http status' do
       get :home
       expect(response).to have_http_status(:ok)
     end
  end
end

require 'rails_helper'

RSpec.describe TasksController, type: :controller do
    context 'signed in' do
      let(:user) { create(:user)}
      let(:task) { create(:task, user: create(:user))}

      before(:each) do
        sign_in user
      end

      describe 'add' do
        it '2 numbers' do
          a = 2 + 3
          expect(a).to eql(5)
        end
      end

      describe 'GET show' do
        it 'returns 200 http status' do
          get :show, params: { id: task.id }
          expect(response).to have_http_status(:ok)
        end
      end

      describe 'PUT update' do
        it 'redirect to tasks/:id' do
          get :update, params: { id: task.id,
                                 task: { title: 'groceries' } }
          expect(response).to have_http_status(:found)
          expect(response).to redirect_to(root_path)
        end
      end

      describe 'DELETE' do
        it "returns 200 http status" do
          get :destroy, params: { id: task.id }
          expect(response).to have_http_status(:found)
        end
      end
    end
end

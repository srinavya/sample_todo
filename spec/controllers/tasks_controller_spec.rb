require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  before do
    @task = Task.create(title: 'get groceries from walmart', note: 'veggies and chicken')
  end

  describe 'add' do
    it '2 numbers' do
      a = 2 + 3
      expect(a).to eql(5)
    end
  end

  # describe 'GET show' do
  #   it 'returns 200 http status' do
  #     get :show, params: { id: @task.id }
  #     expect(response).to have_http_status(:ok)
  #   end
  # end
  #
  # describe 'GET update' do
  #   it 'redirect to tasks/:id' do
  #     get :update, params: { id: @task.id,
  #                            task: { title: 'groceries' } }
  #     expect(response).to have_http_status(:found)
  #     expect(response).to redirect_to(task_path(@task))
  #   end
  # end
  #
  # describe 'DELETE' do
  #   it "returns 200 http status" do
  #     get :destroy, params: { id: @task.id }
  #     expect(response).to have_http_status(:found)
  #   end
  # end
end

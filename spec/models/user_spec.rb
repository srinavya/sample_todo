require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:tasks) }
    it { is_expected.to have_and_belong_to_many(:roles) }
  end

  describe 'fields' do
    it { is_expected.to have_field(:email) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:email)}
  end

  describe '#before_create' do
    let(:user) { create(:user) }
    it 'assign_role' do
      expect(user.roles.pluck(:name)).to include('registered')
    end
  end
end

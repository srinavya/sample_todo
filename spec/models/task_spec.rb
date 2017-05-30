require 'rails_helper'

RSpec.describe Task, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'fields' do
    it { is_expected.to have_field(:title) }
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:note)}
  end
end

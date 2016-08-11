require 'rails_helper'

RSpec.describe Test, type: :model do
  let(:id) { 1 }
  let(:test_text) { 'test it for real'}
  let(:test_model) { Test.new(id: id, test: test_text) }

  subject { test_model.save }

  describe 'test' do
    context 'in limits' do
      it { is_expected.to be_truthy }
    end

    context 'too short' do
      let(:test_text) { 'a' }
      it { is_expected.to be_falsey }
    end

    context 'too long' do
      let(:test_text) { 'a' * 255 }
      it { is_expected.to be_falsey }
    end

    context 'empty' do
      let(:test_text) { nil }
      it { is_expected.to be_falsey }
    end
  end
end

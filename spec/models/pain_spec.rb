# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Pain, type: :model do
  context 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:pain_logs) }
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
  end

  describe 'self.has_logs' do
    it 'returns all pains that have logs' do
      pain = create(:pain, :with_3_pain_logs)
      expect(Pain.has_logs).to include(pain)
    end

    it 'does not include pains that do not have logs' do
      pain = create(:pain)
      expect(Pain.has_logs).not_to include(pain)
    end
  end

  describe 'self.log_count_by_name' do
    let!(:pain1) { create(:pain, :with_3_pain_logs, name: 'pain1') }
    let!(:pain2) { create(:pain, :with_3_pain_logs, name: 'pain2') }

    it 'returns the pain name and the count of its logs as a nested array' do
      expected_output = [['pain1', 3], ['pain2', 3]]
      expect(Pain.log_count_by_name).to match_array(expected_output)
    end
  end
end

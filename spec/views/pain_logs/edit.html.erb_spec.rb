# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'pain_logs/edit', type: :view do
  before(:each) do
    @pain_log = assign(:pain_log, PainLog.create!(
                                    user: nil,
                                    body_part_id: 1,
                                    pain_level: 1,
                                    pain_description: 'MyText',
                                    trigger: 'MyText'
                                  ))
  end

  it 'renders the edit pain_log form' do
    render

    assert_select 'form[action=?][method=?]', pain_log_path(@pain_log), 'post' do
      assert_select 'input[name=?]', 'pain_log[user_id]'

      assert_select 'input[name=?]', 'pain_log[body_part_id]'

      assert_select 'input[name=?]', 'pain_log[pain_level]'

      assert_select 'textarea[name=?]', 'pain_log[pain_description]'

      assert_select 'textarea[name=?]', 'pain_log[trigger]'
    end
  end
end

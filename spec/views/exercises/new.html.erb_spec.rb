# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'exercises/new', type: :view do
  before(:each) do
    assign(:exercise, build(:exercise))
  end

  it 'renders new exercise form' do
    render

    assert_select 'form[action=?][method=?]', exercises_path, 'post' do
      assert_select 'input[name=?]', 'exercise[name]'
      assert_select 'textarea[name=?]', 'exercise[description]'
    end
  end
end

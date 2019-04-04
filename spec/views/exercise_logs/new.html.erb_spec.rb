require 'rails_helper'

RSpec.describe "exercise_logs/new", type: :view do
  before(:each) do
    assign(:exercise_log, ExerciseLog.new(
      :datetime_occurred => 'Sun, 24 Mar 2019 09:30:00 UTC +00:00',
      :sets => 1,
      :reps => 1,
      :body_part_id => 1,
      :current_pain_level => 1,
      :current_pain_frequency => "MyString",
      :progress_note => "MyText"
    ))
  end

  it "renders new exercise_log form" do
    render

    assert_select "form[action=?][method=?]", exercise_logs_path, "post" do

      assert_select "input[name=?]", "exercise_log[sets]"

      assert_select "input[name=?]", "exercise_log[reps]"

      assert_select "input[name=?]", "exercise_log[current_pain_level]"

      assert_select "input[name=?]", "exercise_log[current_pain_frequency]"

      assert_select "textarea[name=?]", "exercise_log[progress_note]"
    end
  end
end

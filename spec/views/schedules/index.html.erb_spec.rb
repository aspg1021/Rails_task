require 'rails_helper'

RSpec.describe "schedules/index", type: :view do
  before(:each) do
    assign(:schedules, [
      Schedule.create!(
        title: "Title",
        all_day: false,
        memo: "MyText"
      ),
      Schedule.create!(
        title: "Title",
        all_day: false,
        memo: "MyText"
      )
    ])
  end

  it "renders a list of schedules" do
    render
    cell_selector = 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(false.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end

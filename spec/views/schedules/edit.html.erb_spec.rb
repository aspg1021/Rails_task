require 'rails_helper'

RSpec.describe "schedules/edit", type: :view do
  let(:schedule) {
    Schedule.create!(
      title: "MyString",
      all_day: false,
      memo: "MyText"
    )
  }

  before(:each) do
    assign(:schedule, schedule)
  end

  it "renders the edit schedule form" do
    render

    assert_select "form[action=?][method=?]", schedule_path(schedule), "post" do

      assert_select "input[name=?]", "schedule[title]"

      assert_select "input[name=?]", "schedule[all_day]"

      assert_select "textarea[name=?]", "schedule[memo]"
    end
  end
end

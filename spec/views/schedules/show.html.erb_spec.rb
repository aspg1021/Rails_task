require 'rails_helper'

RSpec.describe "schedules/show", type: :view do
  before(:each) do
    assign(:schedule, Schedule.create!(
      title: "Title",
      all_day: false,
      memo: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/MyText/)
  end
end

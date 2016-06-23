require 'rails_helper'

RSpec.describe "reports/index", type: :view do
  before(:each) do
    assign(:reports, [
      Report.create!(
        :name => "Name"
      ),
      Report.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of reports" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "replies/index", type: :view do
  before(:each) do
    assign(:replies, [
      Reply.create!(
        :body => "MyText"
      ),
      Reply.create!(
        :body => "MyText"
      )
    ])
  end

  it "renders a list of replies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

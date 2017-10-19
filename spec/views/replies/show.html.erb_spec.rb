require 'rails_helper'

RSpec.describe "replies/show", type: :view do
  before(:each) do
    @reply = assign(:reply, Reply.create!(
      :body => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
  end
end

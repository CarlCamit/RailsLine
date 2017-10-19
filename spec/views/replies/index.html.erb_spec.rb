require 'rails_helper'

RSpec.describe "replies/index", type: :view do
  before(:each) do
    assign(:replies, [
      Reply.create!(),
      Reply.create!()
    ])
  end

  it "renders a list of replies" do
    render
  end
end

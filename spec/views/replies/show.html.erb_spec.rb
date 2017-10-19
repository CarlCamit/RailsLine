require 'rails_helper'

RSpec.describe "replies/show", type: :view do
  before(:each) do
    @reply = assign(:reply, Reply.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end

require 'rails_helper'

RSpec.describe "replies/edit", type: :view do
  before(:each) do
    @reply = assign(:reply, Reply.create!(
      :body => "MyText"
    ))
  end

  it "renders the edit reply form" do
    render

    assert_select "form[action=?][method=?]", reply_path(@reply), "post" do

      assert_select "textarea[name=?]", "reply[body]"
    end
  end
end

require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :avatar_image_data => "MyText",
      :is_adviser => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "textarea[name=?]", "profile[avatar_image_data]"

      assert_select "input[name=?]", "profile[is_adviser]"
    end
  end
end

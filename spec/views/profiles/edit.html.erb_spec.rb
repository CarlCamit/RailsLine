require 'rails_helper'

RSpec.describe "profiles/edit", type: :view do
  before(:each) do
    @profile = assign(:profile, Profile.create!(
      :avatar_image_data => "MyText",
      :is_adviser => false
    ))
  end

  it "renders the edit profile form" do
    render

    assert_select "form[action=?][method=?]", profile_path(@profile), "post" do

      assert_select "textarea[name=?]", "profile[avatar_image_data]"

      assert_select "input[name=?]", "profile[is_adviser]"
    end
  end
end

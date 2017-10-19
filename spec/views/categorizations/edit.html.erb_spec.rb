require 'rails_helper'

RSpec.describe "categorizations/edit", type: :view do
  before(:each) do
    @categorization = assign(:categorization, Categorization.create!(
      :post_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit categorization form" do
    render

    assert_select "form[action=?][method=?]", categorization_path(@categorization), "post" do

      assert_select "input[name=?]", "categorization[post_id]"

      assert_select "input[name=?]", "categorization[category_id]"
    end
  end
end

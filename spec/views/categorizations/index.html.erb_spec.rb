require 'rails_helper'

RSpec.describe "categorizations/index", type: :view do
  before(:each) do
    assign(:categorizations, [
      Categorization.create!(
        :post_id => 2,
        :category_id => 3
      ),
      Categorization.create!(
        :post_id => 2,
        :category_id => 3
      )
    ])
  end

  it "renders a list of categorizations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

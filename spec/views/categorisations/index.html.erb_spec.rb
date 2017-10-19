require 'rails_helper'

RSpec.describe "categorisations/index", type: :view do
  before(:each) do
    assign(:categorisations, [
      Categorisation.create!(
        :post_id => 2,
        :category_id => 3
      ),
      Categorisation.create!(
        :post_id => 2,
        :category_id => 3
      )
    ])
  end

  it "renders a list of categorisations" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end

require 'rails_helper'

RSpec.describe "categorizations/show", type: :view do
  before(:each) do
    @categorization = assign(:categorization, Categorization.create!(
      :post_id => 2,
      :category_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

require 'rails_helper'

RSpec.describe "categorisations/show", type: :view do
  before(:each) do
    @categorisation = assign(:categorisation, Categorisation.create!(
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

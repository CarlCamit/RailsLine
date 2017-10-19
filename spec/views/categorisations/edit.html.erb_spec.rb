require 'rails_helper'

RSpec.describe "categorisations/edit", type: :view do
  before(:each) do
    @categorisation = assign(:categorisation, Categorisation.create!(
      :post_id => 1,
      :category_id => 1
    ))
  end

  it "renders the edit categorisation form" do
    render

    assert_select "form[action=?][method=?]", categorisation_path(@categorisation), "post" do

      assert_select "input[name=?]", "categorisation[post_id]"

      assert_select "input[name=?]", "categorisation[category_id]"
    end
  end
end

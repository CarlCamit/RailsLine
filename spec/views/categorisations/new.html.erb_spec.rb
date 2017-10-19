require 'rails_helper'

RSpec.describe "categorisations/new", type: :view do
  before(:each) do
    assign(:categorisation, Categorisation.new(
      :post_id => 1,
      :category_id => 1
    ))
  end

  it "renders new categorisation form" do
    render

    assert_select "form[action=?][method=?]", categorisations_path, "post" do

      assert_select "input[name=?]", "categorisation[post_id]"

      assert_select "input[name=?]", "categorisation[category_id]"
    end
  end
end

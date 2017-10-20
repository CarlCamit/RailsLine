require 'rails_helper'

RSpec.describe "categorizations/new", type: :view do
  before(:each) do
    assign(:categorization, Categorization.new(
      :post_id => 1,
      :category_id => 1
    ))
  end

  it "renders new categorization form" do
    render

    assert_select "form[action=?][method=?]", categorizations_path, "post" do

      assert_select "input[name=?]", "categorization[post_id]"

      assert_select "input[name=?]", "categorization[category_id]"
    end
  end
end

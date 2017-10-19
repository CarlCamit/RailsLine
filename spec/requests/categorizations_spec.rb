require 'rails_helper'

RSpec.describe "Categorizations", type: :request do
  describe "GET /categorizations" do
    it "works! (now write some real specs)" do
      get categorizations_path
      expect(response).to have_http_status(200)
    end
  end
end

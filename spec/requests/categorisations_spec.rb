require 'rails_helper'

RSpec.describe "Categorisations", type: :request do
  describe "GET /categorisations" do
    it "works! (now write some real specs)" do
      get categorisations_path
      expect(response).to have_http_status(200)
    end
  end
end

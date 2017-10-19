require "rails_helper"

RSpec.describe CategorisationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categorisations").to route_to("categorisations#index")
    end

    it "routes to #new" do
      expect(:get => "/categorisations/new").to route_to("categorisations#new")
    end

    it "routes to #show" do
      expect(:get => "/categorisations/1").to route_to("categorisations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/categorisations/1/edit").to route_to("categorisations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/categorisations").to route_to("categorisations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/categorisations/1").to route_to("categorisations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/categorisations/1").to route_to("categorisations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/categorisations/1").to route_to("categorisations#destroy", :id => "1")
    end

  end
end

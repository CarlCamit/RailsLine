require "rails_helper"

RSpec.describe CategorizationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/categorizations").to route_to("categorizations#index")
    end

    it "routes to #new" do
      expect(:get => "/categorizations/new").to route_to("categorizations#new")
    end

    it "routes to #show" do
      expect(:get => "/categorizations/1").to route_to("categorizations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/categorizations/1/edit").to route_to("categorizations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/categorizations").to route_to("categorizations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/categorizations/1").to route_to("categorizations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/categorizations/1").to route_to("categorizations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/categorizations/1").to route_to("categorizations#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe DataclipsController do
  describe "routing" do

    it "routes to #index" do
      get("/dataclips").should route_to("dataclips#index")
    end

    it "routes to #new" do
      get("/dataclips/new").should route_to("dataclips#new")
    end

    it "routes to #show" do
      get("/dataclips/1").should route_to("dataclips#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dataclips/1/edit").should route_to("dataclips#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dataclips").should route_to("dataclips#create")
    end

    it "routes to #update" do
      put("/dataclips/1").should route_to("dataclips#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dataclips/1").should route_to("dataclips#destroy", :id => "1")
    end

  end
end

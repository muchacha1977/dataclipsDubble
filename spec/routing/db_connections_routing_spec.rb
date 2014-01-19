require "spec_helper"

describe DbConnectionsController do
  describe "routing" do

    it "routes to #index" do
      get("/db_connections").should route_to("db_connections#index")
    end

    it "routes to #new" do
      get("/db_connections/new").should route_to("db_connections#new")
    end

    it "routes to #show" do
      get("/db_connections/1").should route_to("db_connections#show", :id => "1")
    end

    it "routes to #edit" do
      get("/db_connections/1/edit").should route_to("db_connections#edit", :id => "1")
    end

    it "routes to #create" do
      post("/db_connections").should route_to("db_connections#create")
    end

    it "routes to #update" do
      put("/db_connections/1").should route_to("db_connections#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/db_connections/1").should route_to("db_connections#destroy", :id => "1")
    end

  end
end

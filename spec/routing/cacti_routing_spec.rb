require "spec_helper"

describe CactiController do
  describe "routing" do

    it "routes to #index" do
      get("/cacti").should route_to("cacti#index")
    end

    it "routes to #new" do
      get("/cacti/new").should route_to("cacti#new")
    end

    it "routes to #show" do
      get("/cacti/1").should route_to("cacti#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cacti/1/edit").should route_to("cacti#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cacti").should route_to("cacti#create")
    end

    it "routes to #update" do
      put("/cacti/1").should route_to("cacti#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cacti/1").should route_to("cacti#destroy", :id => "1")
    end

  end
end

require "spec_helper"

describe CactusController do
  describe "routing" do

    it "routes to #index" do
      get("/cactus").should route_to("cactus#index")
    end

    it "routes to #new" do
      get("/cactus/new").should route_to("cactus#new")
    end

    it "routes to #show" do
      get("/cactus/1").should route_to("cactus#show", :id => "1")
    end

    it "routes to #edit" do
      get("/cactus/1/edit").should route_to("cactus#edit", :id => "1")
    end

    it "routes to #create" do
      post("/cactus").should route_to("cactus#create")
    end

    it "routes to #update" do
      put("/cactus/1").should route_to("cactus#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/cactus/1").should route_to("cactus#destroy", :id => "1")
    end

  end
end

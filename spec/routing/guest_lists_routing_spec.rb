require "spec_helper"

describe GuestListsController do
  describe "routing" do

    it "routes to #index" do
      get("/guest_lists").should route_to("guest_lists#index")
    end

    it "routes to #new" do
      get("/guest_lists/new").should route_to("guest_lists#new")
    end

    it "routes to #show" do
      get("/guest_lists/1").should route_to("guest_lists#show", :id => "1")
    end

    it "routes to #edit" do
      get("/guest_lists/1/edit").should route_to("guest_lists#edit", :id => "1")
    end

    it "routes to #create" do
      post("/guest_lists").should route_to("guest_lists#create")
    end

    it "routes to #update" do
      put("/guest_lists/1").should route_to("guest_lists#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/guest_lists/1").should route_to("guest_lists#destroy", :id => "1")
    end

  end
end

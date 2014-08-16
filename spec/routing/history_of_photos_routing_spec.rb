require "spec_helper"

describe HistoryOfPhotosController do
  describe "routing" do

    it "routes to #index" do
      get("/history_of_photos").should route_to("history_of_photos#index")
    end

    it "routes to #new" do
      get("/history_of_photos/new").should route_to("history_of_photos#new")
    end

    it "routes to #show" do
      get("/history_of_photos/1").should route_to("history_of_photos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/history_of_photos/1/edit").should route_to("history_of_photos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/history_of_photos").should route_to("history_of_photos#create")
    end

    it "routes to #update" do
      put("/history_of_photos/1").should route_to("history_of_photos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/history_of_photos/1").should route_to("history_of_photos#destroy", :id => "1")
    end

  end
end

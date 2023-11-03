require "rails_helper"

RSpec.describe IngridientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/ingridients").to route_to("ingridients#index")
    end

    it "routes to #new" do
      expect(get: "/ingridients/new").to route_to("ingridients#new")
    end

    it "routes to #show" do
      expect(get: "/ingridients/1").to route_to("ingridients#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/ingridients/1/edit").to route_to("ingridients#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/ingridients").to route_to("ingridients#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/ingridients/1").to route_to("ingridients#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/ingridients/1").to route_to("ingridients#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/ingridients/1").to route_to("ingridients#destroy", id: "1")
    end
  end
end

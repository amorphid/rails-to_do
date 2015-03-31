require "rails_helper"

describe ToDosController do
  context "#create" do
    it "creates a ToDo w/ valid input" do
      pre_count = ToDo.count
      post :create, to_do: Fabricate.attributes_for(:to_do)
      expect(ToDo.count).to eq(pre_count + 1)
    end
  end

  context "#index" do
    it "sets @to_dos" do
      to_dos = Fabricate.times(2, :to_do)
      get :index
      expect(assigns[:to_dos]).to eq(to_dos)
    end
  end
end

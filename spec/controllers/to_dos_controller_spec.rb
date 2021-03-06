require "rails_helper"

describe ToDosController do
  context "#create" do
    it "creates a ToDo w/ valid input" do
      pre_count = ToDo.count
      post :create, to_do: Fabricate.attributes_for(:to_do)
      expect(ToDo.count).to eq(pre_count + 1)
    end
  end

  context "#destroy" do
    it "creates a ToDo w/ valid input" do
      to_do = Fabricate(:to_do)
      pre_count = ToDo.count
      delete :destroy, id: to_do.id
      expect(ToDo.count).to eq(pre_count - 1)
    end
  end

  context "#index" do
    it "sets @to_dos" do
      to_dos = Fabricate.times(2, :to_do)
      get :index
      expect(assigns[:to_dos]).to eq(to_dos)
    end
  end

  context "#update" do
    it "updates a ToDo w/ valid input" do
      to_do = Fabricate(:to_do, is_completed: false)
      put :update, id: to_do.id, to_do: { is_completed: true }
      expect(ToDo.find(to_do.id).is_completed).to eq(true)
    end
  end
end

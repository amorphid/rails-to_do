require "rails_helper"

describe ToDosController do
  context "#index" do
    it "sets @to_dos" do
      to_dos = Fabricate.times(2, :to_dos)
      get :index
      expect(assigns[:to_dos]).to eq(to_dos)
    end
  end
end

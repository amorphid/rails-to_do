require "rails_helper"

describe "Root route" do
  it do
    expect(get: "/").to route_to("to_dos#index")
  end
end

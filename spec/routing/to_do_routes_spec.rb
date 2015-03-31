require "rails_helper"

describe ToDosController do
  it do
    expect(get: "/to_dos").to route_to("to_dos#index")
  end
end

require "rails_helper"

describe "ToDo resource routes" do

  it do
    expect(get: "/to_dos").to route_to("to_dos#index")
  end

  it do
    expect(delete: "/to_dos/:id").to route_to(
      controller: "to_dos",
      action:     "destroy",
      id:         ":id"
    )
  end

  it do
    expect(post: "/to_dos").to route_to("to_dos#create")
  end

  it do
    expect(put: "/to_dos/:id").to route_to(
      controller: "to_dos",
      action:     "update",
      id:         ":id"
    )
  end
end

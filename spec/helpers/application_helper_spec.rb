require "rails_helper"

describe ApplicationHelper do
  subject { ApplicationHelper }

  context "#active" do
    struct = Struct.new(:id, :is_completed)

    a = struct.new(1, true)
    b = struct.new(2, false)
    b = struct.new(3, true)

    expect(active([a,b,c])).to eq([a,c])
  end
end

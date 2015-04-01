require "rails_helper"

describe ApplicationHelper do
  context "#active" do
    it "returns an active collection" do
      struct = Struct.new(:id, :is_completed)

      a = struct.new(1, false)
      b = struct.new(2, true)
      c = struct.new(3, true)
      d = struct.new(3, false)

      expect(active([a,b,c,d])).to eq([a,d])
    end
  end
end

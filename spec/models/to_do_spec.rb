require "rails_helper"

describe ToDo do
  it { should validate_presence_of(:description) }
end

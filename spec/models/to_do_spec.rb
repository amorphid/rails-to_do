require "rails_helper"

describe ToDo do
  it { should validate_presence_of(:description) }
  it { should allow_value(false).for(:is_completed) }
  it { should allow_value(true).for(:is_completed) }
end

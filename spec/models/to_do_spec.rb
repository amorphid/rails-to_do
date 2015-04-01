require "rails_helper"

describe ToDo do
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:is_completed) }
end

class ToDo < ActiveRecord::Base
  validates :description, presence: true
  validates :is_completed, inclusion: { in: [true, false] }
end

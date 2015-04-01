class AddIsCompletedToToDo < ActiveRecord::Migration
  def change
    add_column :to_dos, :is_completed, :boolean
  end
end

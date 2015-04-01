module ApplicationHelper
  def active(collection)
    collection.select { |e| !e.is_completed }
  end

  def completed(collection)
    collection.select { |e| e.is_completed }
  end
end

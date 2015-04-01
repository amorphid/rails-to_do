Fabricator(:to_do) do
  description { Faker::Lorem.sentence }
  is_completed false
end

json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday
  json.url schedule_url(schedule, format: :json)
end

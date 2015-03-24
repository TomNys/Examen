json.array!(@attendances) do |attendance|
  json.extract! attendance, :id, :student_crossover_id, :supervision, :present
  json.url attendance_url(attendance, format: :json)
end

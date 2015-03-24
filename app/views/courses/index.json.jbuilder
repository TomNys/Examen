json.array!(@courses) do |course|
  json.extract! course, :id, :name, :specialization_id, :supervisor_exams_id
  json.url course_url(course, format: :json)
end

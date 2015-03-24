json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :number, :classroom_type_id
  json.url classroom_url(classroom, format: :json)
end

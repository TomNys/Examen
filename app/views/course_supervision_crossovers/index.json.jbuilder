json.array!(@course_supervision_crossovers) do |course_supervision_crossover|
  json.extract! course_supervision_crossover, :id, :course_crossover2_id, :supervision_crossover_id
  json.url course_supervision_crossover_url(course_supervision_crossover, format: :json)
end

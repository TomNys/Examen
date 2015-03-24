json.array!(@student_course_crossovers) do |student_class_crossover|
  json.extract! student_class_crossover, :id, :student_crossover_id, :course_crossover1_id
  json.url student_course_crossover_url(student_class_crossover, format: :json)
end

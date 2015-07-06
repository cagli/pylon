json.array!(@courses) do |course|
  json.extract! course, :id, :id, :tite, :description, :logo, :category, :level, :teacher, :learning_skills, :points
  json.url course_url(course, format: :json)
end

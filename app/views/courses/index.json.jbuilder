json.array!(@courses) do |course|
  json.extract! course, :course_id, :title, :description, :course_icon, :category, :level, :teacher, :learning_skills, :course_points
  json.url course_url(course, format: :json)
end

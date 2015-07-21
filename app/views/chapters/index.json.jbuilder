json.array!(@chapters) do |chapter|
json.array!(@chapters) do |chapter|
  json.extract! chapter, :id, :course_id, :chapter_id, :title, :description, :chapter_icon, :chapter_points
  json.url chapter_url(chapter, format: :json)
end

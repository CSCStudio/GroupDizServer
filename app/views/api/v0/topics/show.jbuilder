if @points.any?
  json.points @points, :id, :title, :description, :username, :created_at
else
  { points: [] }
end
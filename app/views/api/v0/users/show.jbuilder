if @user
  json.nickname @user.nickname
  json.topics (@user.created_topics + @user.participated_topics).uniq,  :id, :title, :description, :creator_name, :created_at
else
  { }
end
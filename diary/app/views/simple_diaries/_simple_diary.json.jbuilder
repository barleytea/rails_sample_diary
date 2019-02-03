json.extract! simple_diary, :id, :title, :body, :created_at, :updated_at
json.url simple_diary_url(simple_diary, format: :json)

json.extract! project, :id, :title, :description, :due_date, :status_id, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)

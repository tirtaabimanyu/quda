json.extract! job, :id, :name, :target, :current, :status, :created_at, :updated_at
json.url job_url(job, format: :json)

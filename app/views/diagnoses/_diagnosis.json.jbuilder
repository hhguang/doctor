json.extract! diagnosis, :id, :patient_id, :heart_rate, :bp, :bs, :prescription, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)

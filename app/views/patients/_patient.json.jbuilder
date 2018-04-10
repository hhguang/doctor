json.extract! patient, :id, :name, :phone, :sex, :age, :birthyear, :case_history, :created_at, :updated_at
json.url patient_url(patient, format: :json)

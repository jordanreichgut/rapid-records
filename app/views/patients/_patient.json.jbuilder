json.extract! patient, :id, :first_name, :last_name, :date_of_birth, :eye_color, :race, :height, :weight, :picture_url, :sex, :blood_type, :created_at, :updated_at
json.url patient_url(patient, format: :json)

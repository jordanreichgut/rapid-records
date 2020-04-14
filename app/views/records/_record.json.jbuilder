json.extract! record, :id, :date, :doctor_name, :patient_id, :record_id, :medications, :treatment, :reason_for_visit, :notes, :created_at, :updated_at
json.url record_url(record, format: :json)

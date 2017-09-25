json.extract! employee, :id, :desc, :employee_type_id, :person_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)

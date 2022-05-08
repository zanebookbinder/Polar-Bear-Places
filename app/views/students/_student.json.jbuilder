json.extract! student, :id, :StudentID, :Name, :Email, :Year, :Building, :Room, :created_at, :updated_at
json.url student_url(student, format: :json)

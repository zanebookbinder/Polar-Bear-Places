json.extract! my_datum, :id, :StudentID, :Name, :Email, :Year, :Building, :Room, :created_at, :updated_at
json.url my_datum_url(my_datum, format: :json)

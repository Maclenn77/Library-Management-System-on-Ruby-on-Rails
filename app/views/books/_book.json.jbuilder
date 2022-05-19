json.extract! book, :id, :author, :title, :publisher, :publishing_date, :publishing_country, :topic, :description, :language, :dewey_classification, :adquisition_date, :copies, :availability, :created_at, :updated_at
json.url book_url(book, format: :json)

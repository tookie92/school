json.array!(@students) do |student|
  json.extract! student, :id, :nom, :prenom, :dob, :statut
  json.url student_url(student, format: :json)
end

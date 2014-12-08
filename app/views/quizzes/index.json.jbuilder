json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :question, :corret_answer, :video, :article_id
  json.url quiz_url(quiz, format: :json)
end

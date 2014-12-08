json.array!(@scores) do |score|
  json.extract! score, :id, :correct, :user_id, :article_id, :issue_id
  json.url score_url(score, format: :json)
end

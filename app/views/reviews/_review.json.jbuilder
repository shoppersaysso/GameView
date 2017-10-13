json.extract! review, :id, :title, :content
json.url game_review_path(review, format: :json)

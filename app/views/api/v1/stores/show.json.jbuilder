json.id @store.id
json.lonlat @store.lonlat
json.name @store.name
json.address @store.address
json.google_place_id @store.google_place_id

json.ratings @store.ratings do |rating|
  json.value rating.value
  json.review rating.review
  json.user_name rating.user_name
  json.date rating.created_at.strftime("%d/%m/%Y")
end

json.ratings_count @store.ratings.count
json.rating_average @store.rating_average

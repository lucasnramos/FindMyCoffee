json.array! @stores do |store|
  json.id store.id
  json.name store.name
  json.address store.address
  json.google_place_id store.google_place_id

  json.ratings_count store.ratings.count
  json.rating_average store.rating_average
end

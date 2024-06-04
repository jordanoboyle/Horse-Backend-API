# json.extract! horse, :id, :created_at, :updated_at
# json.url horse_url(horse, format: :json)

json.id horse.id
json.breed horse.breed
json.build horse.build
json.color horse.color
json.price horse.price
json.image_url horse.image_url
json.created_at horse.created_at
json.updated_at horse.updated_at


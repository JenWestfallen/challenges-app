json.array! @challenges do |challenge|
  json.id @challenge.id
  json.name @challenge.name
  json.start_date @challenge.start_date
  json.description @challenge.description
end
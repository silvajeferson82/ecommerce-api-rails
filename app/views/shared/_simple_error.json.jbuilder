json.errors do 
  json.fields fields if fields.present?
  json.message message if message.present?
end
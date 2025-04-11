User.destroy_all
Chat.destroy_all
Message.destroy_all


10.times do |i|
  User.create!(
    email: "user#{i}@example.com",
    first_name: "Nombre#{i}",
    last_name: "Apellido#{i}"
  )
end

10.times do |i|
  Chat.create!(
    sender_id: i + 1,
    receiver_id: i + 2
  )
end

10.times do |i|
  Message.create!(
    chat_id: i + 1,
    user_id: i + 1,
    body: "Mensaje de prueba #{i + 1}"
  )
end


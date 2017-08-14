Event.destroy_all
Event.create!(title:"Evento de ayer", start: Time.now - 1.day)
Event.create!(title:"Evento de hoy", start: Time.now)
Event.create!(title:"Evento de mañana", start: Time.now + 1.day)
Event.create!(title:"Evento de la semana", start: Time.now - 3.day, end: Time.now + 3.day)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
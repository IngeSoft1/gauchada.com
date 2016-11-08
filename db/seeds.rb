# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creo los monstruos"
Monstruo.find_or_create_by(nombre: "Nahuelito", edad: 15)
Monstruo.find_or_create_by(nombre: "Dracula", edad: 25)
Monstruo.find_or_create_by(nombre: "Hombre Lobo", edad: 55)

puts "Creo los logros"
Logro.find_or_create_by(nombre:"Politico", valor_min: -9999, valor_max:-1);
Logro.find_or_create_by(nombre:"Ciudadano", valor_min: 0, valor_max:0);
Logro.find_or_create_by(nombre:"Buen tipo", valor_min: 1, valor_max:1);
Logro.find_or_create_by(nombre:"Gran tipo", valor_min: 2, valor_max:5);
Logro.find_or_create_by(nombre:"Heroe", valor_min: 6, valor_max:19);
Logro.find_or_create_by(nombre:"Nobleza Gaucha", valor_min: 20, valor_max:50);
Logro.find_or_create_by(nombre:"Dios", valor_min: 51, valor_max:9999);

puts "Creo algunas Gauchadas"
Gauchada.find_or_create_by(titulo:"Mula de transporte", ubicacion:"Misiones", descripcion:"Necesito una persona que me traiga del Paraguay unos paquetes, el contenido es privado.", imagen:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTjoVAHyATWladR8b-FuHGdwwaDaW6Sd_wUA_xleBDemt8M5M1T");
Gauchada.find_or_create_by(titulo:"Pasear al perro", ubicacion:"La Plata", descripcion:"Quiero una persona que me acompañe a pasear a mi perro", imagen:"http://the-rdn.com/wp-content/uploads/2010/08/rotweiler2.jpg");

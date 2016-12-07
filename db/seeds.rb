# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creo los monstruos"


puts "Creo los logros"
Logro.find_or_create_by(nombre:"Politico", valor_min: -9999, valor_max:-1);
Logro.find_or_create_by(nombre:"Ciudadano", valor_min: 0, valor_max:0);
Logro.find_or_create_by(nombre:"Buen tipo", valor_min: 1, valor_max:1);
Logro.find_or_create_by(nombre:"Gran tipo", valor_min: 2, valor_max:5);
Logro.find_or_create_by(nombre:"Heroe", valor_min: 6, valor_max:19);
Logro.find_or_create_by(nombre:"Nobleza Gaucha", valor_min: 20, valor_max:50);
Logro.find_or_create_by(nombre:"Dios", valor_min: 51, valor_max:9999);

puts "Creo algunas Gauchadas"
Gauchada.find_or_create_by(titulo:"Mula de transporte",user_id:1, ubicacion:"Misiones", descripcion:"Necesito una persona que me traiga del Paraguay unos paquetes, el contenido es privado.", imagen:"https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTjoVAHyATWladR8b-FuHGdwwaDaW6Sd_wUA_xleBDemt8M5M1T");
Gauchada.find_or_create_by(titulo:"Pasear al perro",user_id:1, ubicacion:"La Plata", descripcion:"Quiero una persona que me acompañe a pasear a mi perro", imagen:"http://the-rdn.com/wp-content/uploads/2010/08/rotweiler2.jpg");
Gauchada.find_or_create_by(titulo:"Patitoo",user_id:2, ubicacion:"Patolandia", descripcion:"Necesito una persona que me haga un comentario urgentee.", imagen:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK7xeIQPb2g26nVOf2Ir5ykvR-vdqwdO52XgcEHoPxQNaZccTpvw");
Gauchada.find_or_create_by(titulo:"Pasear al perro",user_id:1, ubicacion:"La Plata", descripcion:"Quiero una persona que me acompañe a pasear a mi perro", imagen:"http://the-rdn.com/wp-content/uploads/2010/08/rotweiler2.jpg");
Gauchada.find_or_create_by(titulo:"Patitoo",user_id:2, ubicacion:"Patolandia", descripcion:"Necesito una persona que me haga un comentario urgentee.", imagen:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK7xeIQPb2g26nVOf2Ir5ykvR-vdqwdO52XgcEHoPxQNaZccTpvw");
Gauchada.find_or_create_by(titulo:"Pasear al perro",user_id:1, ubicacion:"La Plata", descripcion:"Quiero una persona que me acompañe a pasear a mi perro", imagen:"http://the-rdn.com/wp-content/uploads/2010/08/rotweiler2.jpg");
Gauchada.find_or_create_by(titulo:"Patitoo",user_id:2, ubicacion:"Patolandia", descripcion:"Necesito una persona que me haga un comentario urgentee.", imagen:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK7xeIQPb2g26nVOf2Ir5ykvR-vdqwdO52XgcEHoPxQNaZccTpvw");
Gauchada.find_or_create_by(titulo:"Pasear al perro",user_id:1, ubicacion:"La Plata", descripcion:"Quiero una persona que me acompañe a pasear a mi perro", imagen:"http://the-rdn.com/wp-content/uploads/2010/08/rotweiler2.jpg");
Gauchada.find_or_create_by(titulo:"Patitoo",user_id:2, ubicacion:"Patolandia", descripcion:"Necesito una persona que me haga un comentario urgentee.", imagen:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK7xeIQPb2g26nVOf2Ir5ykvR-vdqwdO52XgcEHoPxQNaZccTpvw");

puts "Creo algunos comentarios"
Comentario.find_or_create_by(coment:"Tiene que ser algun comentario en particular o este ya alcanza? Cuanto tiempo tardas en el asador?",Id_usuario:1,Id_gauchada:1);
Comentario.find_or_create_by(coment:"Cuanto tiempo es esto",Id_usuario:2,Id_gauchada:3);
Comentario.find_or_create_by(coment:"mmmm pato a la naranja mmmm",Id_usuario:1,Id_gauchada:1);
Comentario.find_or_create_by(coment:"te pago 1 centavo por el pato y tu usuario",Id_usuario:1,Id_gauchada:1);
Comentario.find_or_create_by(coment:"holaaaaaa patolandia",Id_usuario:1,Id_gauchada:1);
Comentario.find_or_create_by(coment:"Cuanto tiempo es esto",Id_usuario:2,Id_gauchada:3);
Comentario.find_or_create_by(coment:"mmmm pato a la naranja mmmm",Id_usuario:1,Id_gauchada:1);
Comentario.find_or_create_by(coment:"Cuanto tiempo es esto",Id_usuario:2,Id_gauchada:3);
Comentario.find_or_create_by(coment:"mmmm pato a la naranja mmmm",Id_usuario:1,Id_gauchada:1);

puts "Creo la base de tarjetas de credito"
Card.find_or_create_by(numero:"4242 4242 4242 4242", usuario_id:1,email_usuario:"admin@gmail.com", cv:123);
Card.find_or_create_by(numero:"1111 2222 3333 4444", usuario_id:2,email_usuario:"sant@gmail.com", cv:123);
puts "Creo la base de datos de estadisticas"
Estadistica.find_or_create_by(usuario:0,fecha:1,comentarios:0,respuestas:0,pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:2,comentarios:0,respuestas:0,pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:3,comentarios:0,respuestas:0,pagos:0, cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:4,comentarios:0,respuestas:0,pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:5,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:6,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:7,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:8,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:9,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:0,fecha:10,comentarios:0,respuestas:0, pagos:0,cant1:0);
Estadistica.find_or_create_by(usuario:10,fecha:11,comentarios:6,respuestas:4, pagos:9,cant1:6);
Estadistica.find_or_create_by(usuario:14,fecha:12,comentarios:23,respuestas:14, pagos:2,cant1:10);

#Especialidades (specialty)
# => 1: Gasfteria
# => 2: Construccion
#[Nombre, descripcion]
specialty_list = [	
	['Gasfiteria','La fontanería, plomería o gasfitería es la actividad relacionada con la instalación y mantenimiento de redes de tuberías para el abastecimiento de agua potable y evacuación de aguas residuales, así como las instalaciones de calefacción en edificaciones y otras construcciones.'],
	['Construccion','La construcción es la actividad de ensamblar, crear, desarrollar un edificio o parte de el. También se incluyen los servicios de albañileria.']
]
#[Nombre,descripcion,specialty_id]
service_list = [
	['Instalacion de Gasfiteria Completa', 'Instalacion de Gasfiteria Completa', 1],
	['Revision general de Gasfiteria', 'Revision general de Gasfiteria', 1],
	['Cambiar Gasfiteria', 'Cambiar Gasfiteria', 1],
	['Desatascar Tuberias', 'Desatascar Tuberias', 1],
	['Instalar Calefont', 'Instalar Calefont', 1],
	['Instalar Termo Electrico', 'Instalar Termo Electrico', 1],
	['Otro trabajo de Gasfiteria menores', 'Otro trabajo de Gasfiteria menores', 1],
	['Otro trabajo de Gasfiteria mayores', 'Otro trabajo de Gasfiteria mayores', 1],
	['Construir Pared', 'Construir Pared', 2],
	['Colocar Baldosa o Azulejo', 'Colocar Baldosa o Azulejo', 2],
	['Poner Losa', 'Poner Losa', 2],
	['Otro trabajo de Albañileria menores', 'Otro trabajo de Albañileria menores', 2],
	['Otro trabajo de Albañileria mayores', 'Otro trabajo de Albañileria mayores', 2],
	['Remodelacion Bano', 'Remodelacion Bano', 2],
	['Remodelacion Habitacion', 'Remodelacion Habitacion', 2],
	['Remodelacion General', 'Remodelacion General', 2],
	['Otro trabajo de remodelacion menores', 'Otro trabajo de remodelacion menores', 2],
	['Otro trabajo de remodelacion mayores', 'Otro trabajo de remodelacion mayores', 2]
]

#Comunidades (Community_type)
# => 0: Edificio
# => 1: Barrio
# => 2: Condominio
# => 3: Villa
# [Nombre,descripcion,community_tipe]
community_list = [
	['Edificio el conquistador','Edificio el conquistador',0],
	['Edificio esmeralda','Edificio esmeralda',0],
	['Barrio Yungay','Barrio Yungay',1],
	['Barrio italia','Barrio italia',1],
	['Condominio los libertadores','Condominio los libertadores',2],
	['Condominio don Pedro','Condominio don Pedro',2],
	['Villa Cariño','Villa Cariño',3],
	['Villa Francia','Villa Francia',3]
]

#Usuarios (category)
# => 0: Especialistas
# => 1: Solicitantes
# => 2: Administrador
#[nombre,mail,contraseña,categoria,especialty_id] <- usuarios especialistas
specialist_list = [
	['UserGasfiter','gasfiter@comunitapp.cl','comunitapp123',0,1],
	['UserConstructor','constructor@comunitapp.cl','comunitapp123',0,2],
]
#[nombre,mail,contraseña,categoria,dirección,communiti_id] Por mientrsa cada usuario pertenece solo a una comunidad.
applicant_list = [ #<- usuarios solicitantes
	['UserSolicitante','solicitante@comunitapp.cl','comunitapp123',1,'Porvenir 1017',1],
	['Juan Hayashi','juan@comunitapp.cl','comunitapp123',1,'El Roble 302',1],
	['Nelson Jerez','nelson@comunitapp.cl','comunitapp123',1,'Terranova 242',2],
	['Cristian Jeldes','cristian@comunitapp.cl','comunitapp123',1,'Lord Cochrane 209',2],
	['Katherine Liberona','katherine@comunitapp.cl','comunitapp123',1,'Pedro de Valdivia 2585',3],
	['Maximiliano Pérez','maximiliano@comunitapp.cl','comunitapp123',1,'García Reyes 71',1],
]
admin_list = [ # usuarios administradores
	['UserAdmin','admin@comunitapp.cl','comunitapp123',2]
] 

#Son noticias que cree para llenar de información la página, lo controlan los admin
#[Titulo, cuerpo]
publication_list = [
	['Sobre los servicios','Los servicios que actualmente posee ComunitApp son gasfiteria y construccion. Si deseas que agreguemos más servicios comunicate con nosotros a traves de la pagina de contacto.'],
	['¿Qué es un demanda?','Una demanda de servicio o solicitud de servicio, es la actividad que te permite como solicitante indicar tus necesidades o deseos para que maestros especialistas las puedan ver y decidir trabajar contigo'],
	['Se viene la gran feria de prototipos','En el Departamento de Ingeniería Informática se realizará la feria de prototipos de proyectos realizados por estudiantes del mismo. Por lo cual se presentara ComunitApp para la univeersidad']
]

#Demandas
#Demand_type
# => 0: publica para la comunidad
# => 1: privada
# [Nombre, descripcion, estado, demand_type,service_ide,community_id]
demands_list = [
	['Demanda pública 1', 'Demanda publica 1 uno creada con el seed',1,0,3,1,1],
	['Demanda pública 2', 'Demanda publica 2 uno creada con el seed',2,0,4,16,1],
	['Demanda pública 3', 'Demanda publica 3 uno creada con el seed',1,0,5,2,2],
	['Demanda pública 4', 'Demanda publica 4 uno creada con el seed',2,0,6,10,2],
	['Demanda pública 5', 'Demanda publica 5 uno creada con el seed',1,0,7,14,3],
	['Demanda pública 6', 'Demanda publica 6 uno creada con el seed',2,0,8,4,1],
	['Demanda pública 7', 'Demanda publica 7 uno creada con el seed',2,0,4,7,1],
	['Demanda pública 8', 'Demanda publica 8 uno creada con el seed',1,0,8,15,1],
	['Demanda privada 1', 'Demanda privada 1 uno creada con el seed',2,1,3,9,1],
	['Demanda privada 2', 'Demanda privada 2 uno creada con el seed',1,1,4,10,nil],
	['Demanda privada 3', 'Demanda privada 3 uno creada con el seed',2,1,5,2,nil],
	['Demanda privada 4', 'Demanda privada 4 uno creada con el seed',1,1,6,4,nil],
	['Demanda privada 5', 'Demanda privada 5 uno creada con el seed',2,1,7,13,nil],
	['Demanda privada 6', 'Demanda privada 6 uno creada con el seed',1,1,8,3,nil],
	['Demanda privada 7', 'Demanda privada 7 uno creada con el seed',2,1,3,5,nil],
	['Demanda privada 8', 'Demanda privada 8 uno creada con el seed',1,1,8,6,nil]
]

#Poblado 
specialty_list.each do |title,description|
	Specialty.create(title: title, description: description)
end
puts 'Especialidades creadas'

service_list.each do |title,description,specialty_id|
	Service.create(title: title, description: description, specialty_id: specialty_id)
end
puts 'servicios creados'

community_list.each do |name,type|
	Community.create(name: name, community_type: type)
end
puts 'Comunidades creadas'

specialist_list.each do |name,email,password,category,specialty_id|
	User.create(name: name, email: email, password: password, category: category, specialty_id: specialty_id)
end
puts 'Especialistas creados'

applicant_list.each do |name,email,password,category,address,community_id|
	User.create(name: name, email: email, password: password, category: category, address: address, community_id: community_id)
end
puts 'Solicitantes creados'

admin_list.each do |name,email,password,category|
	User.create(name: name, email: email, password: password, category: category)
end
puts 'Administradores creados'

publication_list.each do |title,body|
	Publication.create(title: title, body: body)
end
puts 'Publicaciones creadas'

demands_list.each do |title,description,status,demand_type,user_id,service_id,community_id|
	Demand.create(title: title, description: description, status:status, demand_type: demand_type, user_id: user_id, service_id: service_id, community_id: community_id)
end
puts 'Demandas creadas'

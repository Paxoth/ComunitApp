#Especialidades (specialty)
# => 1: Gasfteria
# => 2: Construccion
specialty_list = [	
	['Gasfiteria','La fontanería, plomería o gasfitería es la actividad relacionada con la instalación y mantenimiento de redes de tuberías para el abastecimiento de agua potable y evacuación de aguas residuales, así como las instalaciones de calefacción en edificaciones y otras construcciones.'],
	['Construccion','La construcción es la actividad de ensamblar, crear, desarrollar un edificio o parte de el. También se incluyen los servicios de albañileria.']
]

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

#Usuarios (category)
# => 0: Especialistas
# => 1: Solicitantes
# => 2: Administrador
user_list = [
	['UserGasfiter','gasfiter@comunitapp.cl','comunitapp123',0,1],
	['UserConstructor','constructor@comunitapp.cl','comunitapp123',0,2],
	['UserSolicitante','solicitante@comunitapp.cl','comunitapp123',1,nil],
	['UserAdmin','admin@comunitapp.cl','comunitapp123',2,nil]
]

publication_list = [
	['¿Qué es un demanda?','Una demanda de servicio o solicitud de servicio, es la actividad que te permite como solicitante indicar tus necesidades o deseos para que maestros especialistas las puedan ver y decidir trabajar contigo'],
	['Se viene la gran feria de prototipos','En el Departamento de Ingeniería Informática se realizará la feria de prototipos de proyectos realizados por estudiantes del mismo. Por lo cual se presentara ComunitApp para la univeersidad']
]

specialty_list.each do |title,description|
	Specialty.create(title: title, description: description)
end

service_list.each do |title,description,specialty_id|
	Service.create(title: title, description: description, specialty_id: specialty_id)
end

user_list.each do |name,email,password,category,specialty_id|
	User.create(name: name, email: email, password: password, category: category, specialty_id: specialty_id)
end

publication_list.each do |title,body|
	Publication.create(title: title, body: body)
end
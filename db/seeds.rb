# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#	 cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#	 Mayor.create(name: 'Emanuel', city: cities.first)

# 	category:
# 		0: Especialista
# 		1: Solicitante
# 		2: Administrador
# 	specialty:
# 		1: gasfiter
# 		2: constructor
# Servicios
# Gasfiteria: Instalacion de Gasfiteria Completa
# Gasfiteria: Revision general de Gasfiteria
# Gasfiteria: Cambiar Gasfiteria
# Gasfiteria: Desatascar Tuberias
# Gasfiteria: Instalar Calefont
# Gasfiteria: Instalar Termo Electrico
# Gasfiteria: Otros trabajos de Gasfiteria menores
# Gasfiteria: Otros trabajos de Gasfiteria mayores
# Construccion: Construir Pared
# Construccion: Colocar Baldosa o Azulejo
# Construccion: Poner Losa
# Construccion: Otro trabajos de Albañileria menores
# Construccion: Otro trabajos de Albañileria mayores
# Construccion: Remodelacion Baño
# Construccion: Remodelacion Habitacion
# Construccion: Remodelacion General
# Construccion: Otro trabajos de remodelacion menores
# Construccion: Otro trabajos de remodelacion mayores
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

User.create(name: 'SecretUser',email: 'admin@comunitapp.cl',password:'1234567890',category:2)
especialidadaes = Specialty.create([
	{title: 'Gasfiteria', description: 'Servicio de gasfiteria o fontaneria'},
	{title: 'Construccion', description: 'Servicio de construccion mayor o menores'}
	])
service_list.each do |title,description,specialty_id|
	Service.create(title:title, description: description, specialty_id: specialty_id)
end


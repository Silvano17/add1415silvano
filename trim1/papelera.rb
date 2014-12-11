#!/usr/bin/ruby
# encoding: utf-8
#/Home/silvano

PARAM1=ARGV[0] || ""
PARAM2=ARGV[1] || ""
PARAM3=ARGV[2] || ""

if (PARAM1 == "--help")  
	puts "Muestra la ayuda en pantalla"

elsif (PARAM1 == "-r")
	puts "Recupera los archivos borrados"
	system ("mv /home/silvano/.papelera/"+PARAM2+" "+"/home/silvano")

elsif (PARAM1 == "--info")
	puts "Nos muestra un informe de los ficheros que hay en la papelera"
	system ("tree /home/silvano/.papelera")

elsif (PARAM1 == "--clean")
	puts "Elimina todo el contenido de la papelera de manera definitiva"
	system ("rm /home/silvano/.papelera/* -r -I")

elsif (PARAM1 == "-i")
	puts "Nos muestra un menú que nos permite elegir entre el comando --clean y el comando --info"
	s=$stdin.gets.chomp

	if (s == "--clean") 
		system("rm /home/silvano/.papelera/* -r -I")
	elsif (s == "--info") 
		system("tree /home/silvano/.papelera")
	else 
		puts "No has puesto ningún valor"
	end
	
elsif (PARAM1 == "file")
	puts "Muestra el nombre del fichero que queremos enviar a la papelera"
	comando="mv "+PARAM2+ " "+"/home/silvano/.papelera"
	system(comando)
	puts "El fichero "+PARAM2+" se ha movido a la papelera"
		

elsif (PARAM1 == "")
	puts "Con --help muestra la ayuda en pantalla"
	puts "Con -r recupera los archivos borrados"
	puts "Con --info nos muestra un informe de los ficheros que hay en la papelera"
	puts "Con --clean elimina todo el contenido de la papelera de manera definitiva"
	puts "Con -i nos muestra un menú que nos permite elegir entre el comando --clean y el comando --info"
	puts "Con file Muestra el nombre del fichero que queremos enviar a la papelera"
	end

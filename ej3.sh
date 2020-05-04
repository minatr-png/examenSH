ficheros=0
directorios=0

read -p "Dime el directorio donde quieres buscar: " dir

for i in `ls -l $dir | awk '{print $1}'`; do
	if [[ $i = d* ]]; then
		directorios=$(($directorios+1))
	elif [[ $i = -* ]]; then
		ficheros=$(($ficheros+1))
	fi
done

echo "En este directorio hay un total de $ficheros ficheros y $directorios directorios."

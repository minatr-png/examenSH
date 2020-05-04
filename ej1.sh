if [ $# -ne 1 ]; then
	echo "Error. Necesitas pasar un parámetro"
	exit
fi

contador=0

for i in $(cat procesos.txt | awk '{print $2}'); do
	if [ $i -gt $1 ]; then
		contador=$(($contador+1))
	fi
done

if [ $contador -eq 0 ]; then
	echo "No hay ningún PID mayor."
else
	echo "Hay un total de $contador PIDs mayores a $1"
fi

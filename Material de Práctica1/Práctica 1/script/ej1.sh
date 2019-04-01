#!/bin/bash
path=$(pwd)
destino=$path/tmp/usuarios

#quiero que quede en la carpeta pero siga el ejercicio
if [ -d tmp/ ];
then
	echo "Sí, sí existe. no se crea el directorio"
else
	$(mkdir tmp)
	$(cd tmp)
	$(mkdir usuarios)
	$(mv usuarios tmp)
fi

entrada=$(cut -f 1,3 -d ':' /etc/passwd)

for x in $entrada 
do
  IFS=':' read -a array <<< "$x"
   if [ ${array[1]} -gt 999 ]
   then
      echo ${array[0]} >> info.txt
   fi
done

$(mv info.txt tmp/usuarios)
echo "fin"


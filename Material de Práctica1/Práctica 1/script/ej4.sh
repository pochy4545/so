#!/bin/bash
#
# Recorre todos los archivos del directorio actual y los muestra
#
for archivo in $(ls -C1)
do
  if [ -d $archivo ]
  then
    count=0
    for sub in  $(find $archivo/*jpg | cut -f 2 -d "/")
    do
      $(mv -i $archivo/$sub $archivo/"$archivo-$count.jpg" )
      count= $(($count + 1))
    done
  fi
done


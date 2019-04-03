#!/bin/bash
$(echo "" > infoservidores.txt)
for i in "$@"
do
 $(nc -zv -w 10 $i 80 2>> infoservidores.txt)
 
done
for x in $(cut  -d " " -f 3,7  infoservidores.txt)
 do 
   echo $x
done

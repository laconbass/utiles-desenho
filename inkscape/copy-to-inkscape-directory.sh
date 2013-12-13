#!/bin/bash

FOLDERS=(templates filters)
DEST="/usr/share/inkscape/"

echo "*******************************************************"
echo "** script de instalación de utilidades para inkscape **"
echo "*******************************************************"
echo ""
echo "Preparado para copiar os seguintes ficheiros:"
echo ""
for FOLDER in "${FOLDERS[@]}"
do
  echo "$FOLDER/"
  find ./$FOLDER/*.svg -maxdepth 1 -type f -printf "    %f\n"
done
echo ""
echo "Destino: $DEST"
echo "A continuación solicitarase a súa contrasinal de root"
echo "Presione calquera tecla para continuar, CTRL^C para abortar..."
read -n 1 -s
for FOLDER in "${FOLDERS[@]}"
do
  sudo cp ./$FOLDER/*.svg $DEST/$FOLDER/
done
echo "Presione calquera tecla para finalizar"
read -s -n 1

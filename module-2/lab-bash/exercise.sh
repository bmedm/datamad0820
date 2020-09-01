#Imprimir string
echo "Hello world"
#Crear un directorio y borrarlo
mkdir new-dir
rm -r new-dir
#Copiar un archivo o varios de una carpeta a otra
cp -R ./lorem/sed.txt ./lorem-copy/sed.txt
cp -R ./lorem/lorem.txt ./lorem-copy/lorem.txt ; ./lorem/at.txt ./lorem-copy/at.txt
#at.txt tiene permiso denegado asi que le damos permiso:
chmod +x ./lorem/at.txt
cp -R ./lorem/at.txt ./lorem-copy/at.txt
#Mostrar el archivo o varios
cat ./lorem/sed.txt
cat -- ./lorem/at.txt ./lorem/lorem.txt
#Mostrar solo 3 primeras lineas
cat ./lorem-copy/sed.txt | head -n 3
cat ./lorem-copy/at.txt ./lorem-copy/lorem.txt | head -n 3
#Añadir texto a un archivo de texto
echo "Homo homini lupus" >> ./lorem-copy/sed.txt
#Ver las ultimas tres filas
cat ./lorem-copy/sed.txt | tail -n 3
#sustituir et/ET en un archivo
sed -i '' 's/et/ET/g' ./lorem-copy/at.txt
#Conocer el usuario activo
whoami
#Encontrar donde estas en el archivo de ficheros
pwd
#Encontrar archivos .txt
ls -f ./lorem/*.txt
#Numero de líneas de un fichero
cat ./lorem/sed.txt | wc -l
#Número de archivos que contienen lorem
find . -name "lorem*" | wc -l
##Numero de veces de et en el archivo
fgrep -et ./lorem/at.txt | wc -l
fgrep -et ./lorem/at.txt 
##Numeros de veces de et en los archivos del directorio
egrep -r  et ./lorem-copy/ | wc -l


#BONUS

## Almacenar e imprimir variable
name="Beatriz"
echo $name
##Crear un directorio con el nombre de la variable
mkdir $name
## Eliminarlo
rm -r $name
#


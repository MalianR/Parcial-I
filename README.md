# Parcial-I
Clonar el Repositorio
Para clonar este repositorio, sigue estos pasos:

Abre una terminal o línea de comandos.

Ejecuta el siguiente comando:

git clone https://github.com/MalianR/Parcial-I.git

cd Parcial-I

Verificar en qué rama estás:
git branch

Si no estás en la rama main, cámbiate a ella:
git checkout main

Hacer un pull de la rama master:
git pull origin master

Este comando descargará los últimos cambios de la rama master del repositorio 

Despues de pullear los codigos cada uno estara a parte en carpeas con nombre "Punto #"

Al momento de ya estar en la carpeta utilizando el cd <nombre de la carpeta en donde esta los puntos> se tiene que ejecuar de la siguiente manera 

Punto 1

ya al estar dentro de la carpeta Punto 1 se tiene que ejecutar el codigo el cual solicitaba: Implementa un Autómata Finito Determinista (AFD) para aceptar ciertas expresiones

![image](https://github.com/user-attachments/assets/25708db2-11d7-4503-ba15-b1004fa8e8ff)

Se utiliza el comando: awk -f Automata.awk prueba.txt

Y deberia arrojar este resultado 

![image](https://github.com/user-attachments/assets/0ae4c179-70dc-4d6f-a29b-5e562c481cee)

Punto 2

Ya estando dentro de la ccarpeta de Punto 2 se tiene que ejecutar el codigo el cual pedia: Escribe una gramática regular para comprender la función lambda en Python.

Este comando es para compilar y crear el lex.yy.c

gcc lex.yy.c -o lambda_checker -lfl

y para ejecutarlo

./lambda_checker prueba2.txt

Deberia arrojar el siguiente resultado

![image](https://github.com/user-attachments/assets/9229f5b2-710b-4d6b-b4ec-6505394c9388)

Punto 3

Ya dentro de la carpeta de punto3 en el que se solicitaba: en c escribir un programa el cual busque una palabra clave dentro de un txt y diga cuantas veces se repite la misma

![image](https://github.com/user-attachments/assets/391d5d99-b5bb-4d22-9fef-cfc3bd95ecfa)


Primero se utiliza el comando 
gcc index.c -o a.out

Despues se ejecuta el codigo con el siguiente comando
./a.out prueba3.txt arroz 

El cual deberia arrojar lo siguiente 

![image](https://github.com/user-attachments/assets/65615191-b973-412f-a034-d74324bcc42a)

Punto 4 
Para este punto Se tenia que demostrar mediante 2 lenguajes (Python3, c) y comparar el rendimiento entre un lenguaje interpretado y uno compliado

Ya estando dentro de la carpeta punto 4 se tiene que ejecutar los siguientes comandos 

Para complilar el c 
gcc -o quicksort quicksor.c

Despues se ejecuta el codigo c
./quicksort

Por otro lado se ejecuta el py
python3 quicksort.py

Al ejecutar los codigos el resultado deberia ser parecido a el de la siguiente foto 

![image](https://github.com/user-attachments/assets/314ad9be-f2a3-47ca-8026-df0d0ce4245a)

con este resultado podemos decir que: Para esta prueba, se ejecutó el algoritmo Quicksort en C, un lenguaje compilado, y en Python, un lenguaje interpretado. Se midió el tiempo de ejecución en ambos casos, observando que la implementación en C es más rápida. Esto se debe a que, en los lenguajes compilados como C, el código se traduce a lenguaje máquina una sola vez, permitiendo múltiples ejecuciones sin necesidad de volver a traducir. En cambio, en los lenguajes interpretados como Python, cada línea de código fuente debe ser traducida a lenguaje máquina cada vez que se ejecuta.

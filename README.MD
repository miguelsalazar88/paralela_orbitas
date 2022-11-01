Para el desarrollo de esta práctica experimental se escribió, en dos lenguajes de programación (Python y Cython), un pequeño programa que calcula la posición, velocidad y fuerza gravitacional de un planeta al orbitar a una distancia determinada de otro cuerpo mediante una ecuación diferencial. Esto con el fin de efectuar una comparación de rendimiento entre los dos lenguajes.

Archivos:

- lanzador.pl
- planetCy.pyx (Cython)
- planetPy.py (Python)
- setup.py
- principal.py

Instrucciones de uso:

Nota: Resulta importante dar permisos de ejecución, lectura y escritura al archivo lanzador.pl mediante el comando:

sudo chmod 777 lanzador.pl

En una ventana de Terminal ubicada en la carpeta principal, crear el objeto compartido para el uso de Cython mediante el siguiente comando:

python3 setup.py build_ext --inplace

Acto seguido, ejecutar el archivo lanzador mediante el siguiente comando:

perl lanzador.pl

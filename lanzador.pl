#!/usr/bin/perl

=begin comment
Fecha: 23/08/2022
Autor: Miguel Salazar
Tema: Ejecucion automatizada de Benchmarks
=cut

#Vector para los benchmarks
@Benchmarks = ("principal.py");
#Vector para las cargas
# @Cargas = ("280","691","1102","1513","1924","2335","2746","3157","3568","3979","4390","4800");
@Cargas = ("10000","100000","1000000","10000000");
# Número de repeticiones
$n = 10;
#Se almacena la ubicación
$Path = "/home/miguel/Desktop/computacion_paralela/ejercicio_orbitas/principal.py";

# Se itera sobre la cantidad de ejecutables, sobre la cantidad de cargas y la cantidad de repeticiones

    foreach $carga (@Cargas){

        system("echo Carga = $carga");

        for ($i = 0; $i < $n; $i++){
            system("python3 $Path 10000000 $carga ");
        }
        close($file);
    }

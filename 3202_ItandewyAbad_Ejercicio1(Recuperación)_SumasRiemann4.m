% Title			:Sumatoria de Riemann Superiores e Inferiores.
% Description		:Script para el desarrollo de Sumas de Riemann.
% Author		:Itandewy Abad Alvarado itanabad@gmail.com
% Date: 20210705
% Verssion: 01
% Notes: Requiere aplicación octave usar en consola preferentemente
%Nombre del Ejercicio: Sumas de Riemann
%Limpia la pantalla y las variables
clc, clear
%Definimos los intervalos [a,b] y el número de rectángulos (n).
a = -9;
b = 2;
n = 100;
%Calcula la longitud de la base del rectángulo o (Delta_x).
Delta_x=(b-a)/n;
%Definimos la función la altura de los rectángulos -f(a+iDelta_x).
x =a:Delta_x:(b-base);
%La función representa la altura, (altura=funcion).
altura= x.^2 + 12;
%Calcula el área de cada rectángulo (área=base*altura).
area = Delta_x*altura;
%Establece la grafica de la linea de la funcion -- linspace(Genera valores espaciados)
%En este caso a,b,n (Los intervalos y numero de rectangulos)
x2 = linspace(a,b,n);
y2 = x.^2 + 12;
%Inicio del  intervalo, fin del intervalo, numero de rectángulos(Para los rectángulos "graficarlos").
xa = linspace(a,b,n);
yab = x.^2 + 12;

%Bar distribuye los rectángulos a lo largo del eje x
g = bar(xa,yab,'histc');

%Permite continuar graficando a partir de la linea graficada
hold on

%Grafica la funcion
plot(x2,y2);

%Asigna un nombre a la grafica 
title("f(x) = x.^2 + 12");

%Ajusta la grafica a los datos.
axis tight

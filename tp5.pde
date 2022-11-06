Principal P;
//          (!) comentario al final - explicación del trabajo
void setup() {
  size(600, 500); //la ventana esta diseñada para ser horizontal ;-; xf respetar el orden (mayor, menor);
  background(0);
  P = new Principal();
}

void draw() {
  P.dibujo();
}

void mousePressed() {
  P.interactivo();
}

//gato espacial

/*
objetivo:
 juego con mini historia incluida, un gato astronauta que esquiva meteoros
 nivel uno esquivar objetos
 nivel dos velocidad objetos aumenta
 nivel tres disparar lacer que rompa objetos espaciales
 
 pantallas:
 inicio
 historia
 reglas
 juego
 ganar 
 perder
 creditos
 
 cosas que tengo que ver: 
 :c
 clase para las pantallas
 clase para el reloj
 ubicación del nombre del boton inicia
 */

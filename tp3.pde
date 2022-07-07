//HERNÁNDEZ VILLAZANA KRISTYN MILENA
//enlace del video: https://youtu.be/n79eLg2NOyc
//Variables
int PX, PX2;
int VY, VY2, VY3;
int PY1, PY2, PY3, PY4;
int Cant, Cant2;
int Tam;
int estado;
int Seg;
int Min;
color rosa;
//Cargas
PFont fuente;
PFont fuente2;
//arreglos
String [] textos = {"Ghost Party", "REGLAS", "CREDITOS", "JUGAR", "INICIO","La fiesta no está saliendo como esperábamos.\nDale pastel a todos los invitados antes de\nque se acabe el tiempo.\nTIENES 3 MIN!!!\ndate prisa","PROTAGONISTA\n \nFantasmita host\n \nPERSONAJES SECUNDARIOS\n \ninvitados fantasmales\n \nDIRECTOR DE IMAGEN\nkristyn(?)\n \nDIRECTOR\n \nKRISTYN PRODUCTIONS\n \nARTISTA DE SONIDO\nkriss records\n \nMUSICA\nMr kitty - Scars\n \n ALUMNA\nKristyn Hernández\n \nPROFESOR\nJosé Luis Bugiolachi\n \n \n \n \n \n \n \n \n \n \n GRACIAS POR JUGAR\n <3", "Creditos","Usa las flechas para moverte por el\nsalón de fiesta y presiona ESPACIO para\nentregarle a cada uno su porción de pastel"};
PImage[] party = new PImage [12];
boolean[] OMAGALOGRE = new boolean [8];
//musica
import processing.sound.*;
SoundFile musica;

void setup(){
size(500, 500);
//variables
VY = 1;     VY2 = -1;     VY3 = 1;
PX = 205;   PX2 = -110;
PY1 = 160;  PY2 = 195;    PY3 = 100;    PY4 = 250;
Cant = 4;   Cant2 = 8;
Tam = width/Cant;
estado = 0;
Seg = 0;    Min = 0;
rosa = color(252, 196, 196);
musica = new  SoundFile (this, "cancion.mp3");
musica.loop();
//fuentes
fuente = loadFont("YuGotic.vlw");
fuente2 = loadFont("YuGoticGruesa.vlw");
//imagenes
party [0] = loadImage("Fantasmita.png");
party [1] = loadImage("Fantasmitaconpastel.png");
party [2] = loadImage("invitados.png");
party [3] = loadImage("gameOver.png");
party [4] = loadImage("win.png");
party [5] = loadImage("banderas.png");
party [6] = loadImage("Star.png");
party [7] = loadImage("Star2.png");
party [8] = loadImage("fantasmaconsombrero.png");
party [9] = loadImage("home.png");
party [10] = loadImage("teclado.png");
party [11] = loadImage("Fantasmitahappy.png");
//ubicación invitados
for (int i = 0; i < Cant2; i++){OMAGALOGRE [i] = false;} //ciclofor para mi variable de invitados
}

void draw(){
background(0);
GAMEOVER();
YOUWIN();
inicio();
jugar();
reglas();
creditos();
//reiniciojuego
 if(estado == 0 || estado == 4 ){ 
  PX = 205; //posición host
  PY2 = 195;
  PY3 = 100;
  Seg = 0; // tiempo reloj
  Min = 0;
  for (int i = 0; i < Cant2; i++){OMAGALOGRE [i] = false;} //estado invitados
 }
  if(estado == 0 || estado == 1 ){ //reinicio win, lose
 PX2 = -110;
 VY3 = 1;}
}

void Texto(String texto, color xd, int tamTxT, int Ux, int Uy){
  textAlign(CENTER);  
  textSize(tamTxT);
  fill(xd);
  text(texto, Ux, Uy);
}

void reloj(){
delay(100);
 if(Seg <= 59){
  Texto("0"+Min+":"+Seg, rosa, 20, width/2, 30);
  Seg = Seg + 1;}
 else {  
  Min = Min + 1; 
  Seg = 0;
  Texto("0"+Min+":"+Seg, rosa, 20, width/2, 30);}
 if(Min == 3 && Seg == 0){
  estado = 4;} //se acaba el tiempo pierdes
}

void invitados() {
//columna derecha
 if(PX > 340 && PX < 340 + 50 && PY2 > 10 && PY2 < 110 && keyCode == ' '){
  OMAGALOGRE [0] = true;}
 if (OMAGALOGRE [0] == true){ 
  noTint();
  image(party[8], 393, 8, 95, 107);
}
 if(PX > 340 && PX < 340 + 100 && PY2 > 130 && PY2 < 130 + 100 && keyCode == ' '){
  OMAGALOGRE [1] = true;}
 if (OMAGALOGRE [1] == true){
  noTint();
  image(party[8], 393, 130, 95, 107);
}
 if(PX > 340 && PX < 340 + 100 && PY2 > 250 && PY2 < 250 + 100 && keyCode == ' '){
  OMAGALOGRE [2] = true;}
 if (OMAGALOGRE [2] == true){
  noTint();
  image(party[8], 393, 252, 95, 107);
}
 if(PX > 340 && PX < 340 + 100 && PY2 > 370 && PY2 < 370 + 100 && keyCode == ' '){
  OMAGALOGRE [3] = true;}
 if (OMAGALOGRE [3] == true){
  noTint();
  image(party[8], 393, 376, 95, 107);
}

//columna izquierda
 if(PX > 0 && PX < 50 && PY2 > 10 && PY2 < 50 && keyCode == ' '){
  OMAGALOGRE [4] = true;}
 if (OMAGALOGRE [4] == true){
  noTint();
  image(party[8], 14, 3, 95, 107);
}
 if(PX > 0 && PX < 50 && PY2 > 60 && PY2 < 185 && keyCode == ' '){
  OMAGALOGRE [5] = true;}
 if (OMAGALOGRE [5] == true){
  noTint();
  image(party[8], 14, 127, 95, 107);
}
 if(PX > 0 && PX < 50  && PY2 > 200 && PY2 < 320 && keyCode == ' '){
  OMAGALOGRE [6] = true;}
 if (OMAGALOGRE [6] == true){
  noTint();
  image(party[8], 14, 253, 95, 107);
}
 if(PX > 0 && PX < 60 && PY2 > 370 && PY2 < 500 && keyCode == ' '){
  OMAGALOGRE [7] = true;}
 if (OMAGALOGRE [7] == true){
  noTint();
  image(party[8], 15, 377, 95, 107);}
}

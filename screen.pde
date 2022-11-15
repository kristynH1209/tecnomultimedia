void inicio(){ 
  if( estado == 0){
//fantasma
 PY1 = PY1 + VY;
 background(0);
 if(PY1 >= 170){ VY = -1;}
 if(PY1 <= 130){ VY = 1;}
 noTint(); //for para las estrellas
for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 20, 20);}
 image(party[5], 111, 0, 300, 80);
 image(party[0], 140, PY1, 240, 130); //Fantasma arriba abajo
//botones
 textFont(fuente);
 Texto(textos[0], 255, 50, width/2, 100); 
 fill(rosa);
 rect(180, 328, 150, 50);
 rect(59, 409, 150, 50);
 rect(295, 409, 150, 50);
 textFont(fuente2);
 Texto(textos[3], 0, 25, 255, 362);
 Texto(textos[2], 0, 25, 371, 443);
 Texto(textos[1], 0, 25, 135, 443);
 }
}

void jugar(){ 
 if( estado == 1){
background(0);
for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 10, 10);}
reloj();
//invitados
tint(255, 90, 90);
 for(float i = 0.2 ; i < Cant; i++){ //repetición invitados
 image(party[2], 25, i*Tam, 95, 80);
 }
 for(float i = 0.2 ; i < Cant; i++){ // ubicación
 image(party[2], 400, i*Tam, 95, 80);
 }
keyReleased();
//jugador y boton de inicio
noTint();
image(party[9], width/2 - 5, 450, 30, 30); //botón home
image(party[1], PX, PY2, 110, 90); //cargar uno x uno
if(OMAGALOGRE [0] == true && OMAGALOGRE [1] == true && OMAGALOGRE [2] == true && OMAGALOGRE [3] == true  && OMAGALOGRE [4] == true && OMAGALOGRE [5]  == true && OMAGALOGRE [6] == true && OMAGALOGRE [7] == true){ estado = 5;}
 }
}

void reglas(){
 if( estado == 2){
  background(0);
  for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 10, 10);}
  //botones
  textFont(fuente);
  Texto(textos[1], 255, 50, width/2, 80); 
  Texto(textos[5], 255, 20, width/2, 117);
  fill(rosa);
  rect(26, 442, 100, 35);
  rect(373, 442, 100, 35);
  textFont(fuente2);
  Texto(textos[3], 0, 20, 425, 467);
  Texto(textos[4], 0, 20, 78, 467);
  image(party[10], 25, 190, 200 , 200);
  Texto(textos[8], rosa, 15, 330, 385);
  //fantasma meseron reglas
     PY4 = PY4 + VY;
  if(PY4 >= 250){ VY = -1;}
  if(PY4 <= 230){ VY = 1;}
  image(party[1], 300, PY4, 110, 90);
 }
}

void creditos(){
 if (estado == 3){
  PY3 = PY3 + VY2;
  background(0);
  for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 15, 15);}
  textFont(fuente);
  Texto(textos[7], rosa, 60, width/2, PY3 + 200);
  textFont(fuente2);
  Texto(textos[6], rosa, 20, width/2, PY3 + 600);
  //botón
  fill(rosa);
  rect(26, 442, 100, 35);
  textFont(fuente2);
  Texto(textos[4], 0, 20, 78, 467);
 }
}

void GAMEOVER(){
 if (estado == 4){
 background(rosa);
 for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 10, 10);}
 noTint();
 image(party[3], 50, 100, 400 , 200 );
 //fantasma enojado
 tint(255, 0, 0, 190);
 PX2 = PX2 + VY3*5;
 if(PX2 >= width+600){ PX2 = -110;}
 image(party[2], PX2, 5, 100, 100);
 image(party[2], PX2 - 200, 200, 100, 100);
 image(party[2], PX2 - 600, 350, 100, 100);
 //botones
 fill(250, 177, 182, 200);
 strokeWeight(5);
 stroke(255);
 rect(160, 328, 190, 50);
 rect(59, 409, 150, 50);
 rect(295, 409, 150, 50);
 Texto("VOLVER A JUGAR", 0, 20, 255, 361);
 Texto(textos[2], 0, 25, 371, 443);
 Texto("IR A INICIO", 0, 20, 135, 443);
 }
}

void YOUWIN(){
 if (estado == 5){
 background(rosa);
 tint(255, 116, 151);
 for(int i = 0 ; i < Cant2; i ++){ image(party[7], random(0, width), random(0, height), 10, 10);}
 image(party[4], 135, 120, 240 , 200 );
 noTint();
 image(party[6], 190, 0, 120, 105);
 image(party[7], 90, 25, 80, 75);
 image(party[7], 335, 25, 80, 75);
 //fantasma feliz
 println(PX2);
 PX2 = PX2 + VY3*3;
 if(PX2 >= width){ PX2 = -110; }
 image(party[11], PX2, 360, 110, 100);
 //botón
 fill(250, 177, 182, 200);
 strokeWeight(5);
 stroke(255);
 rect(40, 409, 150, 50);
 Texto("IR A INICIO", 0, 20, 117, 443);
 }
}

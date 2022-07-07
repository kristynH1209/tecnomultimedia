//activar botones
void mouseClicked(){
//botones inicio
 if (estado == 0){
  if( mouseX>180 && mouseX<180 + 150 && mouseY>328 && mouseY<328 + 50){estado = 1;} 
  if( mouseX>59 && mouseX<59 + 150 && mouseY>409 && mouseY<409 + 50){estado = 2;}
  if( mouseX>295 && mouseX<295 + 150 && mouseY>409 && mouseY<409 + 50){estado = 3;}
 }
//boton juego
 if(estado == 1){
  if( mouseX> width/2 - 5 && mouseX< width/2 - 5 + 30 && mouseY > 450 && mouseY < 490 + 30){estado = 0;} 
 }
//botones reglas
 if (estado == 2){
  if( mouseX>26 && mouseX<29 + 100 && mouseY>442 && mouseY<442 + 35){estado = 0;} 
  if( mouseX>373 && mouseX<373 + 100 && mouseY>442 && mouseY<442 + 35){estado = 1;} 
 }
//boton creditos
 if(estado == 3){
  if( mouseX>26 && mouseX<29 + 100 && mouseY>442 && mouseY<442 + 35){estado = 0;} 
 }
 //boton perder
 if(estado == 4){if( mouseX>180 && mouseX<180 + 150 && mouseY>328 && mouseY<328 + 50){estado = 1;} 
  if( mouseX>59 && mouseX<59 + 150 && mouseY>409 && mouseY<409 + 50){estado = 0;}
  if( mouseX>295 && mouseX<295 + 150 && mouseY>409 && mouseY<409 + 50){estado = 3;}}
  //boton ganar
if (estado == 5){
  if( mouseX>40 && mouseX<40 + 150 && mouseY>409 && mouseY<409 + 50){estado = 0;} 
 }
}
//Movimiento host
void keyPressed(){
if (keyCode == RIGHT){PX += 3;}
if (keyCode == LEFT){PX -= 3;}
if (keyCode == UP){PY2 -= 3;}
if (keyCode == DOWN){PY2 += 3;}
}
void keyReleased(){
invitados();
}

void cuadrados(){
  for(int x=0; x<cant; x++){
   for(int y=0; y<cant; y++){
     strokeWeight(10); //borde de separeción
     stroke(100);
     float distan = dist(mouseX, mouseY, x*tam, y*tam);
     float opacidad = distan*100/dist(width, height, 0, 0);
      fill(opacidad); //degradación de grises
  rect(x*tam, y*tam, tam, tam);
  }
 }
}
void circulos(){
  for(int x=0; x<cant2; x++){
  for(int y=0; y<cant2; y++){
 strokeWeight(0);
 fill(225);
 circle(x*tam, y*tam, diametro);
  }
 }
}
void boton(){
  fill(255, 0, 0);
  rect(250, 278, 100, 45);
  fill(0);
  textFont(Letraboton);
  textSize(15);
  text("Don't click", 263, 305);
}
void ojo(){
 if(mousePressed == true){//mouse presionado
  if(mouseX>250 && mouseX<250+100 && mouseY>278 && mouseY<278+45){
  fill(0, 225);
  ellipse(296, 296, 350, 245);
   for(int x = 10; x<iris; x += 30){ //ciclo for para el iris
    if( x <= 210){
    fill(random(50, 255), 0, 0, 100); //flash rojo
     circle(296, 296, x); 
     }
    }
  fill(0);
  circle(296, 296, 15); 
  fill(235, 0, 0);
  textFont(ojo);
  text("i see you", 190, 471);
  }
 }
}

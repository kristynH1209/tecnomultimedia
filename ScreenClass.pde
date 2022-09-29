class Screen extends Boton{ 
float cant;
color R;
boolean press;

 Screen(int px, int py, float tam, color R, boolean press) {
 super(px, py, tam, R);
 this.R = R;
 this.press = press;
 cant = 10;
 }
 void fondo(color F, PImage I){
 background(F);
 bubbles();
 imageMode(CENTER);
 image(I, px, py + 60);
 }
 void botones(color R, boolean press){
  this.R = R;
  barra(R);
  siguiente(R);
  atras(R);
  if(press == true){play(R);}
  else {pause(R);}
 }
 void bubbles(){
  for(int i = 0; i<cant; i++){
   fill(color(random(200, 255),random(230, 255), random(210, 255)), random(200, 250));
   strokeWeight(0);
   circle(random(0, width), random(0, height), random (20, 50));
  }
 }
}

class Boton{ //botones de reproducción
int px, py;
float tam;
color R;

Boton(int px, int py, float tam, color R){
this.px = px;
this.py = py;
this.tam = tam;
this.R = R;
}
 void barra(color R){
  this.R = R;
  strokeWeight(5);
  stroke(R);
  line(px + 150, tam + 100, py, tam + 100);
 }  
 void play(color R){
  this.R = R;
  fill(R);
  strokeWeight(3);
  triangle(px, py + tam + 15, px + 15, py + 10 + tam + 15, px , py + 20 + tam + 15);
 }
 void pause(color R){
  this.R = R;
  fill(R);
  strokeWeight(4);
  line(px, py + tam + 15, px, py + 20 + tam + 15);
  line(px + 10, py + tam + 15, px + 10, py + 20 + tam + 15);
 }
 void siguiente(color R){
  this.R = R;
  fill(R);
  strokeWeight(3);
  triangle(px + 100, py + tam + 15, px + 115, py + 25 + tam, px + 100, py + 35 + tam);
 }
 void atras(color R){
  this.R = R;
  fill(R);
  strokeWeight(3);  
  triangle(px - 100, py + tam + 34, px - 115, py + 24 + tam, px - 100, py + 14 + tam);
 }
}  

class Fondo {
  PImage E;  
  float PX, Op;
  Fondo(PImage E) {
    this.E = E; 
    PX = - width;
    Op = 0;
  }
  void DF() {
    image(E, PX, 0);
    PX = PX < 0 ? PX :  - width;
    PX ++;
  }
  void DC() {
    image(E, PX, 0);
    PX = PX < 0 ? PX :  - width;
    PX ++;
    if ( PX == 0) {
      PX -- ;
      Op ++ ;
      fill(0, Op);
      rect(0, 0, width, height);
    }
  }
}
//************************************************************************
class Boton extends Texto {
  PFont fuente;
  float px, py, anc, alt;//del void
  Boton(PFont fuente, float tam, color C, int aling) {//constructor txt
    super(fuente, tam, C, aling);
  }
  void DB(float px, float py, float anc, float alt, String txt) {
    this.px = px;
    this.py = py;
    this.anc = anc;
    this.alt = alt;
    fill(255);
    rect(px, py, anc, alt, 7);//7 es el redondeado
    txt(txt, px + width/16, py + height/13);
  }
}
//**********************************************************************************
class Texto {
  PFont fuente;
  float tam;
  color C;
  int aling;
  Texto(PFont fuente, float tam, color C, int aling) {//detro del constructor, parametros para luego reemplazalos
    this.fuente = fuente; 
    this.tam = tam;
    this.C = C;
    this.aling = aling;
  }
  void txt(String Gato, float x, float y) {
    fill(C);
    textFont(fuente);
    textSize(tam);
    textAlign(aling);
    text(Gato, x, y);
  }
  void Img(PImage foto, float px, float py, float ancho, float alto) {
    pushStyle();
    imageMode(CENTER); //sera otra foto despues
    image(foto, px, py, ancho, alto);
    popStyle();
  }
}

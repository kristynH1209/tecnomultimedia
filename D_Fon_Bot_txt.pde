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
  int now, after;
  float px, py, anc, alt;

  Boton(PFont fuente, float px, float py, float anc, float alt) {//constructor txt
    super(fuente, height/15, 255, LEFT);
    this.px = px;
    this.py = py;
    this.anc = anc;
    this.alt = alt;
  }
  void DB(int now, int after, String txt) {
    this.now = now;
    this.after = after;
    fill(#A162D8);
    strokeWeight(0);
    rect(px, py, anc, alt, 7);//7 es el redondeado
    txt(txt, px + width/16, py + height/13);
  }
  void BI(int now, int after) {//boton invisible
    this.now = now;
    this.after = after;
  }
  boolean Press (float px, float py, float anc, float alt) {
    this.px = px;
    this.py = py;
    this.anc = anc;
    this.alt = alt;
    boolean press = mouseX > px && mouseX < px + anc && mouseY > py && mouseY < py + alt == true;
    return press;
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
    imageMode(CENTER);
    image(foto, px, py, ancho, alto);
    popStyle();
  }
}

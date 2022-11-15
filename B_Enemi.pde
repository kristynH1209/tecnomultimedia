class Enemigo {
  float px, py, tam, direc;
  PImage Ene;
  boolean XE;
  Enemigo(PImage Ene, float x, float tam) {
    this.tam = tam;
    this.Ene = Ene;
    this.px = x;
    py = random(0, height);
    direc = random(1, 5); //random en el eje Y
    XE = false;
  }
  void DE() {//dibujo enemigos
    pushStyle();
    imageMode(CENTER);
    image(Ene, px, py, tam, tam);
    popStyle();
    ME();
  }
  void ME() { //movimiento de los enemigos
    if (px> width + tam || XE) { //si sale de la ventana o lo matan se reinicia
      px = -tam;
      py = random(height);
      direc = random(2, 4);
      XE = false;
    }
    px+= direc;
  }
  void KL() {
    XE = true;
  }
}
//***********************************************************************************
class Vidas {
  float px, py;
  PImage life, dead;
  Boolean vivo;
  Vidas (PImage life, PImage dead, float px, float py) {
    this.life = life;
    this.dead = dead;
    this.px = px;
    this.py = py;
    vivo = true;
  }
  void DV() {
    if (vivo == true) {
      pushStyle();
      imageMode(CENTER);
      image(life, px, py);
      popStyle();
    } else {
      pushStyle();
      imageMode(CENTER);
      image(dead, px, py);
      popStyle();
    }
  }
}

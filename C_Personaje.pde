class Personaje {
  PImage per; 
  float px, py, tamm;
  boolean choca; 
  Personaje(PImage per, float tam) { 
    this.per = per; 
    this.tamm = tam;
    px = width - tamm - width/30;
    py = height/2;
    choca = false;
  }
  void DP() {
    pushStyle();
    imageMode(CENTER);
    image(per, px, py);
    popStyle();
  }
  void MP(int tecla) {
    if (tecla == DOWN && py < height-tamm) { 
      py += 3;
    }
    if (tecla == UP && py > tamm) {
      py -=3 ;
    }
  }
}
//***********************************************************************************
class RashoLaser {
  float px, py, tam;
  PImage st;
  boolean Toca;
  RashoLaser(PImage st, float px, float py) {
    this.px = px;
    this.py = py;
    this.st = st;
    Toca = false;
    tam = 30;
  }
  void DRz() {
    pushStyle();
    imageMode(CENTER);
    image(st, px, py);
    popStyle();
  }
  void MRz(float pyRz) {
    if (Toca && px > - tam/2 ) {
      px -= 20;
    } else {
      px = width - height/8; //posicion de mi personaje
      py = pyRz;
      Toca = false;
    }
  }
  void KL() {
    Toca = true;
  }
}

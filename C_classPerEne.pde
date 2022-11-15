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

//*************************************************************************
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
    if(vivo == true){
    pushStyle();
    imageMode(CENTER);
    image(life, px, py);
    popStyle();
    } else{
    pushStyle();
    imageMode(CENTER);
    image(dead, px, py);
    popStyle();
    }
  }
}
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
  
  void Toca(){
  choca = true;
  }
}

//************************************************************************
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

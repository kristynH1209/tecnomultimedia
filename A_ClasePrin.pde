class Juego {
  //otros
  int pantalla, puntos, IndT;
  long TI;
  PFont T, C;
  color azul;
  //medidas
  float [] PX = new float [3];
  float [] PY = new float [3];
  float [] TM = new float [4];
  //objetos
  Boton [] bo = new Boton [3]; 
  Texto [] txt = new Texto [4];
  Enemigo [] enemi = new Enemigo [3];
  Enemigo [] enemi2 = new Enemigo[3];
  Vidas [] Life = new Vidas [3];
  Fondo Space;
  Fondo Hist;
  Personaje puppycat;
  RashoLaser Rz;
  //imagenes
  PImage [] Img = new PImage [8];
  //**********************************************************CONSTRUCTOR
  Juego() {
    //Pantalla y fuentes
    pantalla = 0;
    puntos = 0;
    IndT = 0;
    TI = 0;
    azul = color(111, 133, 216);
    C = loadFont("comun.vlw");
    T = createFont("titulo.ttf", height/9); 
    //IMAGENES
    Img[0] = loadImage("espacio1.png");//fondo
    Img[0].resize(width*2, height);
    Img[1] = loadImage("ene.jpg");//enemigo 1
    Img[2] = loadImage("perso.jpeg"); //personaje
    Img[2].resize(height/4, height/4); 
    Img[3] = loadImage("cat.jpg"); //enemigo 2
    Img[4] = loadImage("Star.png"); //bala
    Img[4].resize(height/12, height/12);
    Img[5] = loadImage("vivo.png");//vidas
    Img[5].resize(height/12, height/12);
    Img[6] = loadImage("nuerto.png");//vidas
    Img[6].resize(height/12, height/12);
    Img[7] = loadImage("hts.png");
    Img[7].resize(width*2, height);
    Space = new Fondo(Img[0]);
    Hist = new Fondo(Img[7]);
    //POSICIÓN X
    PX[0] = width/2;
    PX[1] = width;
    PX[2] = 0;
    // POSICIÓN Y 
    PY[0] = height/2;
    PY[1] = height;
    PY[2] = 0;
    //TAMAÑO
    TM[0] = height/15; 
    TM[1] = height/25;  
    TM[2] = height/9;
    TM[3] = height/30;
    //BOTONES
    bo[0] = new Boton(C, TM[0], 0, LEFT);//grande
    bo[1] = new Boton(C, TM[1], 0, LEFT);//pequeño
    //TEXTOS
    txt [0] = new Texto(T, TM[2], azul, CENTER);//titulo grande (revisar si se puede cambiar por un 8
    txt [1] = new Texto(C, TM[1], 255, CENTER);//letra grande
    txt [2] = new Texto(T, TM[0], 255, CENTER);//titulo pequeño
    txt [3] = new Texto(C, TM[3], 255, LEFT);//letra pequeña
    //ENEMIGOS
    for (int i = 0; i < enemi.length; i++) {
      enemi[i] = new Enemigo(Img[1], width/2, height/8);
    }
    for (int i = 0; i < enemi2.length; i++) {
      enemi2[i] = new Enemigo(Img[3], width/2, height/8);
    }
    //PERSONAJE
    puppycat = new Personaje(Img[2], height/8);
    Rz = new RashoLaser (Img [4], puppycat.px, puppycat.py);
    //VIDAS
    for (int i = 0; i < Life.length; i++) {
      Life[i] = new Vidas(Img[5], Img[6], width/12 + width/10*i, height/15);
    }
  }
  //**********************************************************************DIBUJO
  void Dib() {
    //------------------------------------- Inicio 
    if (pantalla == 0) {
      Space.DF();
      txt[0].txt("¡Gato Espacial!", PX[0], PY[0] - TM[2]);
      bo[0].DB( PX[0]-width/8, PY[0], width/4, height/8, "iniciar");
      bo[0].DB( PX[0]-width/3, PY[0] + height/5, width/4, height/8, "reglas");
      bo[0].DB( PX[1]- PX[0], PY[0] + height/5, width/3, height/8, " créditos");
    }
    //--------------------------------------------- Mini Historia
    if (pantalla == 1) {
      Hist.DC();
      txt[2].txt("  < back", PX[2] + TM[2], PY[2] + TM[0]);
      txt[2].txt("saltar", PX[1] - height/7, PY[2] + TM[0]);
      Tiempo(1000);
    }
    //---------------------------------------------- Reglas
    if (pantalla == 2) {
      background(255);
    }
    //---------------------------------------------- Juego
    if (pantalla == 3) {
      println(puntos);
      Space.DF();
      for (int i = 0; i< enemi.length; i++) {
        enemi[i].DE();
      }//dib Ene
      txt[2].txt("Puntos  "+puntos, PX[1] - height/4, PY[2] + TM[0]);
      puppycat.DP();
      Rz.DRz();
      Rz.MRz(puppycat.py); //ubicacion del rayo en el personaje
      for (int i = 0; i< enemi2.length; i++) {
        enemi2[i].DE();
      }
      Rayo();
      for (int i = 0; i< Life.length; i++) {
        Life[i].DV();
      }
      Choque();
      if (Life[0].vivo ==  false && Life[1].vivo ==  false && Life[2].vivo ==  false) {
        pantalla = 5;
      }
    }
    //---------------------------------------- GANAR | PERDER
    if (pantalla == 4) {
      background(0, 225, 255);
    }
    if (pantalla == 5) {
      background(0, 0, 255);
    }
  }
  //************************************************************ Mov Pers y kill enemis
  void MovP(int tecla) {
    puppycat.MP(tecla);
    if (tecla == LEFT) { //disparar rayo
      Rz.KL();
    }
  }
  void Rayo() { //cuando el rayo impacta
    for (int i=0; i< enemi.length; i++) {
      float Ds = dist(Rz.px, Rz.py, enemi[i].px, enemi[i].py);
      if (Ds < enemi[i].tam/2 + Rz.tam/2) {
        Rz.Toca = false;
        enemi[i].KL();
        puntos++; 
        if (puntos == 20) {
          pantalla = 4;
        }
      }
    }
  }
  void Choque() { //cuando el personaje choca
    for (int i = 0; i< enemi2.length; i++) {
      float Ds = dist(puppycat.px, puppycat.py, enemi2[i].px, enemi2[i].py);
      if (Ds < enemi2[i].tam/2 + puppycat.tamm/2) {
        puppycat.choca = false;
        enemi2[i].KL();
        background(255, 0, 0);
        Life[i].vivo = false; //3 vidas y enemigos (si el enemi se reinicia la vida también)
      }
    }
  }
  void Tiempo(float TE) {
    if (millis() >= TI + TE) {
      IndT ++;
    }
    if (IndT == 900) { 
      pantalla = 2;
    }
  }
  //******************************************************** Interacción para botones
  void Inter() {
    pantalla ++;
  }
}

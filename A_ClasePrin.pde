class Principal {// despues lo ordeno ;-;
  //objetos
  Enemigo [] ene = new Enemigo[5];
  Textos [] txt = new Textos[5];
  Boton [] BO = new Boton [5];
  //propiedades
  int estado, ancho, alto, ancho2, alto2, Min, Seg;
  int [] X = new int [5]; 
  int [] Y = new int [5];
  int [] TxM = new int [5];
  float x, y, tam;
  PFont FC, FT;
  PImage si;

  Principal() {
    //asignación
    estado = 0; //cambio de pantallas hasta que encuentre una mejor forma
    X[0] =  width/2;                Y[0] = height/2;
    X[1] = width/9;                 Y[1] = height/11;
    X[2] = width;                   Y[2] = height;
    X[3] = 0;                       Y[3] = 0;
    x = width/2;
    y = height/2;
    tam = height/ 8;
    ancho = width/4;                alto = height/8;
    TxM[0] = height/15;  TxM[1] = height/25;  TxM[2] = height/9;  TxM[3]= height/30; //tamaños de texto
    //cargas
    FC = loadFont("comun.vlw");      //fuentes tipograficas
    FT = createFont("titulo.ttf", TxM[2]);
    si = loadImage("cat.jpg");
    BO[0] = new Boton(FC, TxM[0]);   //(botones)fuente comun, tamaño grande
    BO[1] = new Boton(FC, TxM[1]);   //(botones)fuente comun, tamaño pequeño
    for(int i = 0; i<ene.length; i++){
    ene[i] = new Enemigo(x, y, tam);}

    //haria un for para esto pero me di cuenta de que la fuente cambia..
    txt [0] = new Textos(FT, TxM[2]);//letra principal, tamaño grande
    txt [1] = new Textos(FC, TxM[1]);//letra comun, tamaño grande
    txt [2] = new Textos(FT, TxM[0]);//letra principal, tamaño pequeño
    txt [3] = new Textos(FC, TxM[3]);//letra comun, tamaño pequeño
  }

  void dibujo() {
    //inicio
    if (estado == 0) {
      background(0);
      txt[0].txt("Gato Espacial!", 255, X[0], Y[0] - TxM[2]);
      BO[0].DB(X[0], Y[0] + alto, ancho, alto, "Iniciar");
    }
    //historia
    if (estado == 1) {
      background (200);
      txt[2].txt("< back", 255, X[1], Y[1]);
      BO[1].DB(X[2] - width/8, Y[2] - height/10, width/8, height/10, "saltar");
      if (Seg <= 59) {
        delay(100); 
        Seg = Seg + 1;
      } //aqui se va a mostrar una 
      else {   
        Min = Min + 1;  
        Seg = 0;
      }         //caricatura en plan  mini historia
      if (Min == 1 && Seg == 0) {  
        estado = 2;
      }   //por eso el reloj, para dar tiempo de lectura :)
    }
    //intrucciones
    if (estado == 2) {
      background(0);
      txt[0].txt("Intrucciones!", 255, X[0], Y[0] - height/3);
      txt[1].txt("yadud on es qeu tosye dacione, bueno, tienes que esquivar a los\n oponentes y evitar morir se supone que va a tener contador\n de vidas pero primero fijemonos que funcione ", 255, X[0], Y[0] - height/5);
      imageMode(CENTER); //sera otra foto despues
      image(si,X[0] + width/5, Y[0] + height/6, ancho + width/5, alto + height/4);
      txt[3].txtL("Más texto introductivo de\n como tiene que jugar esto\n que estoy haciendo, texto txt\n text textotext tx mastexto th\n sjdfksosme s textocosas y\n scomojugar cosastxt txt es\n mas relleno para ver como\n queda el formato textual.\n vamos a ver como se mejora\n XD", 255, X[1], Y[2] - height/2);
      txt[2].txt("Ok!", 255, X[2] - width/9, Y[2] - height/20);
    }
    
    if(estado == 3){background(255);
    int cant = 5;
    for(int i = 0; i<cant; i++){
    ene[i].DE();
    ene[i].ME();}
   }
    /*
    // me ayuda para identificar si estoy dentro de un boton 
     
     if (mouseX>X[2] - width/6  && mouseX< X[2] - ancho/4 && mouseY>Y[2] - height/10  && mouseY<Y[2] - height/20) {
     println("estoy dentro");
     } else {
     println("aqui no");
     }*/
  }

  void interactivo() {
    //boton Pantalla inicio
    if (estado == 0) {
      if (mouseX>X[0]-ancho/2 && mouseX<X[0]+ancho/2 && mouseY>Y[0]+alto/2 && mouseY<Y[0]+alto+alto/2) {
        estado = 1;}
      }
      
      //Botones pantalla historia
      if (estado == 1) {
        if (mouseX>X[1] - ancho/2 && mouseX< X[1] + ancho/3 && mouseY>Y[1] - alto/2 && mouseY<Y[1] + alto/4) {
          estado = 0;
        }
        if (mouseX>X[2] - width/5  && mouseX< X[2] - ancho/4 && mouseY>Y[2] - height/6  && mouseY<Y[2] - height/20) {
          estado = 2; //hay que revisar porque hay veces en las que el boton saltar, reconoce el boton ok y en vez de ir a creditos va a juego
        }
      }
      //boton creditos
      if(estado == 2){
      if (mouseX>X[2] - width/6  && mouseX< X[2] - ancho/4 && mouseY>Y[2] - height/10  && mouseY<Y[2] - height/20) {
        estado = 3;
        }
      }
  }
}

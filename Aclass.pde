class Principal{ //propiedades
 Screen pantalla;
 int px, py, tam;
 int estado, repro;
 PImage [] Icons;
 color [] colores;
 boolean press;

Principal(){ //constructor
 tam = width/2;
 px = width/2;
 py = 100;
 estado = 1;
 repro = 0;
 Icons = new PImage [3];
 colores = new color [6];
 pantalla = new Screen(px, py, tam, 0, press);

 //carga de fotos
 Icons [0] = loadImage("ima1.png");
  Icons[0].resize(tam, tam);
 Icons [1] = loadImage("ima2.png");
   Icons[1].resize(tam, tam);
 Icons [2] = loadImage("ima3.jpg");
   Icons[2].resize(tam, tam);
 
 //carga de colores
 colores [0] = color(141, 222, 182); //principal verd
  colores [1] = color(99, 185, 139);// subverd
 colores [2] = color(250, 202, 192);//prin rosa
  colores [3] = color(242, 155, 137);//sub rosa
 colores [4] = color(255, 180, 224);//prin fuxia
  colores [5] = color(149, 125, 222);//sub fuxia
 }

 void BelloPatrick(){ //dibujo de pantallas
  if (estado == 1){
  pantalla.fondo(colores[0], Icons[0]);
  pantalla.botones(colores [1], press);
  }
  if(estado == 2){
    pantalla.fondo(colores[2], Icons[1]); 
    pantalla.botones(colores [3], press);
  }
  if(estado == 3){
   pantalla.fondo(colores[4], Icons[2]);
   pantalla.botones(colores [5], press);
  }
 }
 
 
 void puppycat(){//interacción
  //siguiente
  if(mouseX>348 && mouseX<348 + 25 && mouseY>362 && mouseY< 362 + 25){estado ++;}
  if(estado == 4){estado = 1;}
  
  //atras
  if(mouseX>133 && mouseX<133 + 25 && mouseY>360 && mouseY<360 + 25){estado --;}
  if(estado == 0){estado = 3;}
  
  //detener segun la pantalla
  if (estado == 1){dayDream.stop(); getLucky.stop();}
  if (estado == 2){heaven.stop(); getLucky.stop();}
  if (estado == 3){heaven.stop(); dayDream.stop();}
  
  //reproducir segun la pantalla
  if(mouseX>246 && mouseX<246 + 19 && mouseY>360 && mouseY<360 + 30){
   press = !press;
   // pantalla 1
   if (press == true && estado == 1){heaven.play();} else{ heaven.pause();}
   //pantalla 2
   if (press == true && estado == 2){dayDream.play();} else{ dayDream.pause();}
   //pantalla 3
   if (press == true && estado == 3 ){getLucky.play();} else{ getLucky.pause();}
  }
 }
}

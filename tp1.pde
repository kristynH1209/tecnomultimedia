//Hernández Villazana Kristyn Milena :)

//variables
int Tam; 
int key;
int ejeX;
int ejeY;
color trans;
color transT;
String titulo;
//letras
PFont Mletra;
PFont letra2;
PFont letra3;
//imagenes
PImage PlanoCara;
PImage PlanoHombro;
PImage PlanoCompleto;
PImage Aurora;
PImage Diaval;
PImage Rey;
PImage ShyLittleFrog;

void setup(){
size(920, 610); 
background(0);
textSize(10);

//variables declaradas
titulo = "Malefica";
PlanoCara = loadImage("Cara.png"); 
PlanoHombro = loadImage("Silueta.jpg");
PlanoCompleto = loadImage("CuerpoCompleto.png");
ShyLittleFrog = loadImage("CuteFrog.png");
Aurora = loadImage("aurora.jpg");
Diaval = loadImage("diaval.jpg");
Rey = loadImage("estefano.png");
Mletra = createFont("letra malefica.ttf", 35);
letra2 = loadFont("Arial.vlw");
letra3 = loadFont("monastic.vlw");
trans = 225;
transT = 225;
ejeX = 300;
ejeY = 610;
key = ' ';
}

void draw(){
background(0);
noTint();
println(frameCount);
Tam = frameCount;

//para reiniciar
if(keyPressed){ frameCount = 270;}

//imagen y titulo principal
if(frameCount >= 0){ 
image(PlanoHombro, ejeX --, 0, 508, 902);
fill(0, frameCount);
rect(0, 0, 920, 610);
}
if(frameCount >= 0){
textFont(Mletra);
textAlign(CENTER);
textSize(Tam);
fill(225, 225, 225, transT --);
text(titulo,width/2 - 10, height/2);
}

//Credito Angelina....
if (frameCount >= 270){
 image(PlanoCara, 0, 0, 920, 610);
 }
 if (frameCount >= 300){ 
textAlign(LEFT);
textFont(Mletra);
textSize(90);
fill(225);
text("Malefica", width/2, height/2 - 60);
textFont(letra2);
text("by Angelina Jolie", width/2, height/2);
textSize(20);
}

//Credito Elle...
if(frameCount >= 350){
image(Aurora, 0, 0, 920, 610);
}
if(frameCount >= 360){
textAlign(LEFT);
textFont(Mletra);
textSize(95);
fill(0);
text("Aurora", 135, height/2 - 60);
textFont(letra2);
text("by Elle Fanning", 135, height/2);
textSize(25);
}

//Creditos Sam
if(frameCount >= 380){
image(Diaval, 0, 0, 921, 625);
}
if(frameCount >= 390){
textAlign(CENTER);
textFont(Mletra);
textSize(90);
fill(225);
text("Diaval", width/2, 520 - 60);
textFont(letra2);
text("by Sam Riley", width/2, 520);
textSize(20);
}

//Creditos Sharlto
if(frameCount >= 410){
image(Rey, 0, 0, 921, 625);
}
if(frameCount >= 420){
textAlign(LEFT);
textFont(Mletra);
textSize(75);
fill(0);
text("Rey Estefano", width/2, height/2 - 60);
textFont(letra2);
text("by Sharlto Copley", width/2, height/2);
textSize(5);
}

//Creditos finales
if(frameCount >= 450){
image(PlanoCompleto, 0, 0, 920, 610);
}
if(frameCount >= 470){
textAlign(CENTER);
textFont(Mletra);
textSize(35);
fill(225);
text("Creditos", width/2, ejeY -- );
textFont(letra2);
textSize(20);
text("ElENCO", width/2, ejeY -- + 50 ); 
fill(225);
textFont(letra3);
textSize(20);
text("Scarlett Johansson\nVivienne Marcheline\nBrenton Thwaites\nLeo Suter\nNeel Sethi\nJuno Temple\nJanet Mcteer\nIsobelle Molloy\nMirand Richrdson\nPeter Capaldi\nPax Thien\nElla Purnell\nHermione Corfield\nToby Regbo\nIndia Eisley\nIdris Elba\nHannah New\nEleanor Worthington\nDaniel Westwood\nJackson Bews\nJo Osmond\nCharlotte Chatton\nRichard Summers\nLesley Manville\nPeter Baykov\nDean Semler\nJulian Seager\nSteven Cree\nDaniel Stisen\nPeter. G Reed\nMatthew John Morley\nKenneth Cranham\nJames Sives\nMarama Corlett\nAngus Wright\nJonh Mcmillan\nSarah Flind\nJoe Roth\nBill Peet\nSandy Fox\nTerri Douglas\nTim Treloar\nDave Boat\nOliver Maltman\nEdd Osmond\nAdam Bond\n", width/2, ejeY --  + 80);
textFont(letra2);
textSize(20);
fill(225);
text("PRODUCTORES", width/2, ejeY -- + 1200 );
textFont(letra3);
textSize(20);
text("Joe Roth\nSarah Bradshaw\nDon Hahn\nAngelina Jolie\nPalak Patel", width/2, ejeY -- + 1240);
textFont(letra2);
textSize(20);
fill(225);
text("EQUIPO TECNICO", width/2, ejeY -- + 1400 );
textFont(letra3);
textSize(20);
text("DECORADOR\nGary Freeman\n \nDIRECTOR ARTISTICO\nDavid Allday", width/2, ejeY -- + 1450);
textFont(letra2);
textSize(20);
fill(225);
text("BANDA SONORA", width/2, ejeY -- + 1650 );
textFont(letra3);
textSize(20);
text("COMPOSITOR\nJames Newton Howard", width/2, ejeY -- + 1700);
textFont(letra2);
textSize(20);
fill(225);
text("DISTRIBUIDORA", width/2, ejeY -- + 1790 );
textFont(letra3);
textSize(20);
text("ENCARGADOS DE PRENSA\n \nFloriane Mathieu\nAude Thomas", width/2, ejeY -- + 1830);
textFont(letra2);
textSize(20);
fill(225);
text("EMPRESAS", width/2, ejeY -- + 1960 );
textFont(letra3);
textSize(20);
text("Walt Disney Pictures\n \nWalt Disney Studios Motion Pitures Spain\n \nMoving Pitures\n \nMiller Roth Films", width/2, ejeY -- + 1990);

//ranita random
} 
if(frameCount >= 700){
background(0);}
if(frameCount >= 710){
rectMode(CENTER);
tint(random(100, 225), random(100, 225), random(100, 225));
image(ShyLittleFrog, random(184, 509), height/2 - 140);
textFont(letra2);
textSize(25);
fill(random(100, 225), random(100, 225), random(100, 225));
text("PRESIONA ESPACIO PARA REINICIAR", width/2, 500);
}
}

//disfrute el titulo porque solo se va a poder ver una sola vez ;)
//Pd: ya lo intente *se pone a llorar*

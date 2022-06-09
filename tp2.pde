//Hernández Kristyn; legajo(91416/3);
//Link del video: https://youtu.be/h3RSY4PFdcg
int cant;
int cant2;
int tam; 
int diametro;
int iris;
PFont ojo;
PFont Letraboton;
void setup(){
size(600, 600);
background(0);
 cant = 8;
 cant2 = 9;
 tam = width/cant; 
 diametro = 15;
 iris = 228;
 ojo = createFont("terrorfont.ttf", 60);
 Letraboton = loadFont("Lboton.vlw");
}
void draw(){
cuadrados(); 
circulos();
boton();
ojo();
}

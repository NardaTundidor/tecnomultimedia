//tundidor narda 91517/7 tp3
//https://youtu.be/T5psU3Ia7oc
String [] LETRAS = {"El Gran Hasbulla \n El juego", 
  "Para conseguir la victoria del Hasbulla \n debes explotar\n la mayor cantidad de bombas posibles \n antes que el tiempo acabe", "Para empezar\n apreta e", "HAS SALVADO\n AL PUEBLO", "TODOS\n MURIERON"};
float x=random(10, 60);
PFont fuente1;
PFont fuente2;
PImage hasbulla;
PImage fondo;
PImage elpapa;
PImage perdiste;
int cant=40;
int tam =40;
float [] posx = new float[cant];
float [] posy = new float[cant];
float [] mx = new float[cant];
float [] my = new float[cant];
boolean [] activo = new boolean[cant];
float hx=mouseX;
float hy=mouseY;
int partes;
int puntos;
int boom;

void setup() {
  size(600, 600);
  background(0);
  fuente1 = loadFont("fuente1.vlw");
  fuente2 = loadFont("fuente2.vlw");
  hasbulla=loadImage("hasbullaa.jpg");
  fondo=loadImage("fondo.jpg");
  elpapa=loadImage("elpap.jpg");
  perdiste=loadImage("fondoperdiste.jpg");
  puntos = 0;
  boom = 0;
  partes = 0;
  for (int i=0; i<cant; i++) {
    posx[i] = random(0, 600);
    posy[i] = random(0, 600);
    mx[i] = random(-2, 2);
    my[i] = random(-2, 2);
    activo[i] = true;
  }}
void draw() {
  if (partes==0) {
    background(0);
      fill(255);
      ellipse(random(10, 600), random(10, 600), 10, 10);
      fill(205);
      textFont(fuente1);
      confi( LETRAS[0], width/2, 150, 50);
      confi( LETRAS[1], width/2, height/2, 25);
      confi( LETRAS[2], width/2, 500, 20);
  }
  if (partes==1) {
    background(255);
    hasbulla();
    bombas();
    if (puntos >= 10) partes = 3;
    if (boom > 20) {
      image(perdiste, CENTER, CENTER, 600, 600);
       textFont(fuente2);
       fill(255,0,0);
      confi( LETRAS[4], width/2, height/2, 80);
    }
     boton();
  }
  if (partes == 3) {
      background(255);
      image(elpapa, CENTER, CENTER, 500, 550);
       textFont(fuente2);
        fill(0,100,255);
      confi( LETRAS[3], width/2, 400, 70);
       boton();
  }}
void mousePressed() {
  for (int i=0; i<cant; i++) {
    if (activo[i]) {
    float distancia= dist (mouseX, mouseY, posx[i], posy[i]);
    if (distancia<tam/2) {
      puntos ++;
      activo[i] = false;
    }}}
  if ((partes >= 1) && (dist(mouseX, mouseY, width - 50, height - 50) < 50)){
    setup();
 }}

void keyPressed(){
  if (key == 'e'){
    partes = 1;
  }}


void confi(String texto, int cx, int cy, int tam) {
  textSize(tam);
  textAlign(CENTER);
  text(texto, cx, cy);
}
void bombas() {
  fill(0);
  textSize(30);
  text("Puntos: " + puntos, 100, 50);
   text("BOOM: " + boom, 400, 50);
  for (int i=0; i<cant; i++) {
    if (activo[i]) {
      fill(0);
      ellipse(posx[i], posy[i], tam, tam);
      posx[i]+= mx[i];
      posy[i]+= my[i];
      fill(250);
      ellipse(posx[i], posy[i]-20, 10,5);
       fill(155);
      ellipse(posx[i]+10, posy[i], 5, 10);
      if (posx[i]<0 || posx[i]>width || posy[i]<0 || posy[i]>height) {
        boom++;
        activo[i] = false;
      }
    }
  }
}
void hasbulla() {  
  image(fondo, CENTER, CENTER, 600, 600);
  image(hasbulla, mouseX, mouseY, 70, 70);
}
void boton(){
 fill(200);
      ellipse(width - 50, height - 50, 70,80);
       fill(150,0,0);
    ellipse(width - 50, height - 50, 50,80);
    fill(200);
    text("R",width - 50, height - 40);
}

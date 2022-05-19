int px;
int py;
int pxI; 
PFont fuente1; 
PFont fuente2;
PFont fuente3;
PFont fuente4;
PImage posterr;
PImage elos;
PImage musica;
PImage ella;
PImage actores;
float x=random(10,500);
float x1=random(10,50);
float opacidad=0;


void setup(){
  size(500,600);
println(mouseX,mouseY);
  posterr= loadImage("posterr.jpg");
  elos= loadImage("elos.jpg");
  musica= loadImage("musica.jpg");
  ella= loadImage("ella.jpg");
  actores= loadImage("actores.jpg");
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  px=250;
  py=200;
  int pxI= width/2;
 fuente1 = loadFont("fuente1.vlw");
 fuente2 = loadFont("fuente2.vlw");
 fuente3 = loadFont("fuente3.vlw");
 fuente4 = loadFont("fuente4.vlw");
 opacidad=0;
}
 void draw(){
 println(mouseX, mouseY);
 println(frameCount);
 background(0);
 //pantalla 0

 if ((frameCount>10)&&(frameCount<20)){
    frameRate(80);
   background(random(10,50),0,random(10,50),opacidad);
 }
 
 // pantalla 1
  if ((frameCount>20)&&(frameCount<240)){
 image(posterr, pxI,CENTER,500,600);
 textSize(10);
 fill(53,94,55);
 textFont(fuente1);
 text("10 THINGS", px,120);
 text("I HATE \n ABOUT YOU", px,py);
  }
 if (frameCount>120){
 px+=5;
 }
if (frameCount>240){
background(0);
}
  //pantala 2

  if ((frameCount>245)&&(frameCount<400)){
    fill(255);
ellipse(random(10,500),random(10,500),5,5);
    px=250;
      py=200;
  fill(10,150,random(10,500),opacidad);
  textFont(fuente1);
  text("Director",px,py);
  
  textFont(fuente2);
  textSize(70);
  text("Gil Junge",px,py+100);
  opacidad +=3.1;
  }
  if (opacidad>250){
    frameCount++;
  }
   //Pantalla 3
 if ((frameCount>400)&&(frameCount<700)){
 float px= 130;
float  py=450;
image(elos,CENTER,CENTER,500,600);
 textFont(fuente2);
  textSize(50);
  fill(255);
  text("Heath",px,py);
  text(" Ledger",px,py+30);
   text("Julia Stiles",px+230,py);
}
 if (frameCount>700){
 px+= 5;
 }
//pantalla 4 
if ((frameCount>700)&&(frameCount<1100)){
  int tam=250;
int tamy=250;
  image( ella,0,50,tam,tamy);
  image(actores, 230,300,tam,tamy);
    textFont(fuente2);
    textSize(50);
    fill(227,168,87);
    text("LARISA\n OLEYNIK", 370,150);
      textSize(30);
     text("JOSEPH\n GORDON", 100,400);
     text("DAVID\n KRUMHOLTTZ", 100,500);
     
}
//pantalla 5 musica
{if ((frameCount>1100)&&(frameCount<1500)){

 image(musica, 100,100,300,400);
 textFont(fuente3);
 textSize(80);
 fill(255);
 rect(width/2,50,250,80,8);
 fill(37,40,87);
 text("MUSICA",width/2,50);
  textFont(fuente2);
  fill(1,70,97);
 text("R\nI\nC\nH\nA\nR\n D ",45,height/2);
 text("G\n I\n B\n B\n S",450,height/2);
 }
 if ((frameCount>1500)&&(frameCount<1900)){
   textSize(80);
     textFont(fuente2);
   fill(random(10,500),random(10,500),random(10,500),(random(10,500)));
 text("R\nI\nC\nH\nA\nR\n D ",random(10,500),random(10,500));
    fill(random(10,500),random(10,500),random(10,500),(random(10,500)));
 text("G\n I\n B\n B\n S",random(10,500),random(10,500));
   fill(random(10,500),random(10,500),random(10,500));
 text("RICHARD ",random(10,500),random(10,500));
    fill(random(10,500),random(10,500),random(10,500));
 text("GIBBS",random(10,500),random(10,500));
}
}
 //pantalla final
if (frameCount>1900){
   fill(random(10,500),random(10,500),100);
 rect(width/2,height/2, 100,100);
 fill(255);
ellipse(random(10,500),random(10,500),5,5);
fill((random(10,50)),0,random(10,50),opacidad);
triangle(random(10,500),random(10,500),random(10,500),random(10,500),random(10,500),random(10,500));
  textFont(fuente4);
  textSize(30);
   fill(50,random(10,500),random(10,500));
text("Click para Reiniciar",250,200);
}
 }
void mousePressed(){
 if (mouseX>200&&mouseX<300&&mouseY>250&&mouseY<350){
 frameCount=0;
}
 
 }
   
  
  
 

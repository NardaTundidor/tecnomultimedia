//TUNDIDOR NARDA 91517/7 COMISION 1
//https://youtu.be/AIbGLFBTXvg
int tam=500;
int tamc= 50;
int es=15;
int cant= 15;
float x=random(10,500);
void setup(){
size(600,500);
background(255);
}
void draw(){
  strokeWeight(3);
   println(mouseX, mouseY);
//lineas ancho
for (int i=0; i<height; i+=es ){
  line(0,i,width,i);
}
  //lineas circulo
for(int a=tam; a>0; a-=5){
 float cl = map(a, tam, 0, 20, 250); 
    if (a%2==0) {
      stroke(cl-100, 0, cl);
    } else {
      stroke(cl, 0, cl-100);
    }
ellipse(width/2,height/2,a,a);
}
//lineas largooooooooo
for (int l=0; l<mouseX; l+=es){
    stroke(0);
  line(l,0,l,height);
 
 //lienas ancho pequeñas
 for (int an=0; an<mouseX; an+=es){
   stroke(0);
line(0,an,width,an);
}}
 for (int p=0; p<cant; p++) {
 for (int pc=0; pc<cant; pc++) {
   float cl = map(p, 0,mouseX, 50, 255); 
    if ((p+pc)%2==0) {
      stroke(cl, 0, cl);
    } else {
      stroke(cl, 0, 0);}
    ellipse(p*tamc, pc*tamc, 10, 10);
 }}}
    void mousePressed(){
     background(random(10,500),random(10,500),random(10,500),random(10,500));
    }
 void keyPressed(){
   if (key==' '){
 background(255); 
   }}
 

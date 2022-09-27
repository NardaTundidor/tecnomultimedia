class Ogro{
  int ax,ay;

  PImage ogro ;
 Ogro(int py,int px){
    ay = py;
    ax=px;
 ogro =loadImage("image.png");
}
  void dibujarOgro(int pa){
  image(ogro, ax+pa,ay,160,200 );
}}
  

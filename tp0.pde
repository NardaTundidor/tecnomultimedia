void setup(){
  size(500,500);
  background(255);
 
  textSize(30);
}
void draw(){
  println(mouseX, mouseY);
  fill(0,130,0);
  quad(122,130,314,130,300,347,95,347);
  fill(0,50,40);
  triangle(314,136,325,312,302,312);
  fill(130,10,0);
  triangle(122,130,118,162,150,130);
  triangle( 282,130,314,130,311,162);
  triangle(98,319,122,347,95,347);
  triangle(301,317,300,347,270,347);
  fill(200);
  circle(206,201,80);
 fill(255);
   circle(188,190,17);
  circle(217,190,17);
   fill(2);
 circle(188,190,7);
  circle(217,190,7);
 fill(0);
  stroke(50,5,2);
 line(188,212,216,217);
 fill(100,0,100);
 text( "  Pare usted ",120,270);
 text( "   de ",160,295);
 text( "   sufrir",140,325);
}

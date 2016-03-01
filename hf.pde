PImage alma1; 
PImage alma2; 
PImage hatter;
float x;
boolean xd;
float y;
boolean yd;
float szog;
float s;
void setup () {
  size(450, 520);
  alma1=loadImage("alma1.png");
  alma2=loadImage("alma2.png");
  hatter = loadImage("hatter.png");
   x=0;
   y=0;
   xd=true;
   yd=true;
   s=10;
   szog=0;
}
void draw(){
   background(hatter);
   translate(x, y);
   rotate(szog);
   image (alma1, 0, 0);
   rotate(-szog);
   translate(-x, -y);
   image (alma2, 1, 1);
   if (xd & yd){
   y=y+s;
   }
   if (yd == false & xd) 
   {
     x=x+s;
     szog=szog+0.1;
   }
  if (x > width-190){
    xd= false;
  }
  if (y > 330){
    yd= false;
    s=2;
  }
}
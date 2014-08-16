int radius = 100;
float x = 0;
float y = 0;
float z = 0;
String[] word = {"hello","salut","hola","ciao","guten tag","ola"};

void setup () {
  size(500,500,P3D);
  noFill();
}

void draw () {
  
  background (0);
  
  translate(width/2,height/2,-radius);
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  stroke(255);
  fill(125,20,191,255);
  box(radius*2);
  
  pushMatrix();
  translate(-35,10,radius+20);
  fill(255,255,0);
  textSize(32);
  text(word[0],0,0);
  popMatrix();
  
  pushMatrix();
  translate(radius+20,10,35);
  rotateY(PI/2);
  textSize(32);
  text(word[1],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-radius-20,10,-35);
  rotateY(-PI/2);
  textSize(32);
  text(word[2],0,0);
  popMatrix();
  
  pushMatrix();
  translate(35,10,-radius-20);
  rotateY(PI);
  textSize(32);
  text(word[3],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-70,-radius-20,10);
  rotateX(PI/2);
  textSize(32);
  text(word[4],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-25,radius+20,-10);
  rotateX(-PI/2);
  textSize(32);
  text(word[5],0,0);
  popMatrix();
  
  if (keyPressed) {
    if (key == CODED) {
       if (keyCode == RIGHT) {
         y+=PI/32;
       } else if (keyCode == LEFT) {
         y-=PI/32;
       }
       if (keyCode == UP) {
         x-=PI/32;
       } else if (keyCode == DOWN) {
         x+=PI/32;
       }
       if (key == 'd') {
         z+=PI/32;
       } else if (key == 'a') {
         z-=PI/32;
       }
     }
   }
  
}

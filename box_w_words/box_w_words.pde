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
  translate(-35,10,radius+10);
  fill(0);
  textSize(32);
  text(word[0],0,0);
  popMatrix();
  
  pushMatrix();
  translate(radius+10,10,35);
  rotateY(PI/2);
  textSize(32);
  text(word[1],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-radius-10,10,-35);
  rotateY(-PI/2);
  textSize(32);
  text(word[2],0,0);
  popMatrix();
  
  pushMatrix();
  translate(35,10,-radius-10);
  rotateY(PI);
  textSize(32);
  text(word[3],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-70,-radius-10,10);
  rotateX(PI/2);
  textSize(32);
  text(word[4],0,0);
  popMatrix();
  
  pushMatrix();
  translate(-25,radius+10,-10);
  rotateX(-PI/2);
  textSize(32);
  text(word[5],0,0);
  popMatrix();
  
  if (keyPressed) {
    if (key == CODED) {
       if (keyCode == RIGHT) {
         y+=PI/16;
       } else if (keyCode == LEFT) {
         y-=PI/16;
       }
       if (keyCode == UP) {
         x-=PI/16;
       } else if (keyCode == DOWN) {
         x+=PI/16;
       }
       if (key == 'd') {
         z+=PI/8;
       } else if (key == 'a') {
         z-=PI/8;
       }
     }
   }
  
}

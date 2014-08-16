//turn words on and off for memory testing purposes, use different colored sides.

int radius = 100;
float x = 0;
float y = 0;
float z = 0;
String[] hello = {"hello","salut","hola","ciao","guten tag","ola"};
String[] name = {"my name is", "je m'appelle", "me llamo", " Mi chiamo", "ich heiße", "chamo-me"};

void setup () {
  size(500,500,P3D);
  noFill();
}

void draw () {
  
  background (0);
  
  translate(250,250,-radius);
  rotateX(x);
  rotateY(y);
  rotateZ(z);
  stroke(255);
  fill(125,20,191,255);
  box(radius*2);
  
  if (keyPressed) {
    if (key == 'h') {
      pushMatrix();
      translate(-35,10,radius+20);
      fill(255,255,0);
      textSize(32);
      text(hello[0],0,0);
      popMatrix();
       
      pushMatrix();
      translate(radius+20,10,35);
      rotateY(PI/2);
      textSize(32);
      text(hello[1],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-radius-20,10,-35);
      rotateY(-PI/2);
      textSize(32);
      text(hello[2],0,0);
      popMatrix();
       
      pushMatrix();
      translate(35,10,-radius-20);
      rotateY(PI);
      textSize(32);
      text(hello[3],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-70,-radius-20,10);
      rotateX(PI/2);
      textSize(32);
      text(hello[4],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-25,radius+20,-10);
      rotateX(-PI/2);
      textSize(32);
      text(hello[5],0,0);
      popMatrix();
    }
    if (key == 'n') {
      pushMatrix();
      translate(-35,10,radius+20);
      fill(255,255,0);
      textSize(32);
      text(name[0],0,0);
      popMatrix();
       
      pushMatrix();
      translate(radius+20,10,35);
      rotateY(PI/2);
      textSize(32);
      text(name[1],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-radius-20,10,-35);
      rotateY(-PI/2);
      textSize(32);
      text(name[2],0,0);
      popMatrix();
       
      pushMatrix();
      translate(35,10,-radius-20);
      rotateY(PI);
      textSize(32);
      text(name[3],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-70,-radius-20,10);
      rotateX(PI/2);
      textSize(32);
      text(name[4],0,0);
      popMatrix();
       
      pushMatrix();
      translate(-25,radius+20,-10);
      rotateX(-PI/2);
      textSize(32);
      text(name[5],0,0);
      popMatrix();
    }
  }
  
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
     }
     if (key == 'd') {
       z+=PI/32;
     } else if (key == 'a') {
       z-=PI/32;
     }
   }
  
}

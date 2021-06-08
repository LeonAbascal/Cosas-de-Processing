float rotationx, rotationy, rotationz;
float rotationSpd;

void setup() {
  size(800, 600, P3D);
  rotationx = 0;
  rotationy = 0;
  rotationz = 0;
  rotationSpd = 0.02;
  
  background(0);
  stroke(255);
  noFill();
  
  translate(width/2, height/2, 0);
  stroke(255);
  
}

void draw() {
  
  background(0);
  translate(width/2, height/2, 0);
  rotateX(rotationx % TWO_PI);
  rotateZ(rotationz % TWO_PI);
  rotateY(rotationy % TWO_PI);
  
  drawPyramid();
  
  chekKeys();
  
  
}

void drawPyramid() {
  beginShape();
    vertex(-100, -100, -100);
    vertex( 100, -100, -100);
    vertex(   0,    0,  100);
    
    vertex( 100, -100, -100);
    vertex( 100,  100, -100);
    vertex(   0,    0,  100);
    
    vertex( 100, 100, -100);
    vertex(-100, 100, -100);
    vertex(   0,   0,  100);
    
    vertex(-100,  100, -100);
    vertex(-100, -100, -100);
    vertex(   0,    0,  100);
  endShape();
}

void chekKeys() {
  if (keyPressed) {
    if (key == 'w') {
      rotationx += rotationSpd;
    } else if(key == 's') {
      rotationx -= rotationSpd;
    } 
    
    if (key == 'a') {
      rotationz += rotationSpd;
    } else if (key == 'd') {
      rotationz -= rotationSpd;
    }
    
    if (key == 'q') {
      rotationy += rotationSpd;
    } else if (key == 'e') {
      rotationy -= rotationSpd;
    }
  
  }
}

void keyPressed() {
  if (keyCode == UP) {
      rotationSpd = min(1, rotationSpd+0.01);
      println(rotationSpd);
    } else if (keyCode == DOWN) {
      rotationSpd = max(0, rotationSpd-0.01);
      println(rotationSpd);
    }
    
    
}

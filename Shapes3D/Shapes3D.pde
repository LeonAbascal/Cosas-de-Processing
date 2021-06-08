float rotationx, rotationy, rotationz;
float rotationSpd, rotationAcel;
boolean autoRotationEnabled, autoSpdEnabled;
int direction;
boolean wireframeEnabled;
int chosenPolygon, totalPolys;

void setup() {
  size(800, 600, P3D);
  rotationx = -0.4;
  rotationy = 0.6;
  rotationz = 0;
  rotationSpd = 0.02;
  rotationAcel = 0.01;
  
  autoSpdEnabled = false;
  direction = 1;
  autoRotationEnabled = false;
  wireframeEnabled = true;
  chosenPolygon = 1;
  totalPolys = 3;
  
  background(0);
  stroke(255);
  strokeWeight(3);
  
  initCommonVertexes();
  
}

void draw() {
  
  background(0);
  translate(width/2, height/2, 0);
  
  //println("Rotation x: " + rotationx);
  //println("Rotation y: " + rotationy);
  //println("Rotation z: " + rotationz);
  
  autoMovement();
  
  drawPolygon();
  
  println("SPD: " + rotationSpd);
  println("ACL: " + rotationAcel);

  
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
    rotationSpd = min(1, rotationSpd+rotationAcel);
  } else if (keyCode == DOWN) {
    rotationSpd = max(0, rotationSpd-rotationAcel);
  } else if (keyCode == LEFT) {
    rotationAcel -= 0.01;
  } else if (keyCode == RIGHT) {
    rotationAcel += 0.01; 
  }
    
    if (key == 'p') {
      autoRotationEnabled = !autoRotationEnabled;
    }
    
    if (key == 'o') {
      autoSpdEnabled = !autoSpdEnabled;
    }
    
    if (key == 'i') {
      wireframeEnabled = !wireframeEnabled;
    }
    
    if (key == '-') {
      if (chosenPolygon < totalPolys) {
        chosenPolygon +=1;
      }
    } else if (key == '.') {
      if (chosenPolygon > 1) {
        chosenPolygon -=1;
      }
    }
    
}

void autoMovement() {

  rotateX(rotationx % TWO_PI);
  rotateZ(rotationz % TWO_PI);
  rotateY(rotationy % TWO_PI);
  
  if (autoRotationEnabled) {
    if (key == 'w') {
      rotationx += rotationSpd;
    } else if (key == 's') {
      rotationx -= rotationSpd;
    } else if (key == 'a') {
      rotationz += rotationSpd;
    } else if (key == 'd') {
      rotationz -= rotationSpd;
    } else if (key == 'q') {
      rotationy += rotationSpd;
    } else if (key == 'e') {
      rotationy -= rotationSpd;
    } else rotationy += rotationSpd;
    
    
  } else {
    chekKeys();
  }
  
  if (autoSpdEnabled) {
    if (rotationSpd >= 1 || rotationSpd <= 0) {
      direction *= -1;
    }
    rotationSpd += (rotationAcel / 10) * direction;
    
  }
}

void drawPolygon() {
  
  switch(chosenPolygon) {
    case 1: 
      drawPyramid();
      break;
    case 2:
      drawLayers();
      break;
    case 3:
      drawCube();
      break;
    default:
      println("Not valid");
      break;
  }
}

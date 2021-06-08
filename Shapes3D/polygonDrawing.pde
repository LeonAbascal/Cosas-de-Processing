void drawLayers() {
  fill(255);
  if (wireframeEnabled) noFill();
  
  for (int i = -127; i < 128; i++) {
    beginShape();
    vertex(-127, i,  128); // B
    vertex(-127, i, -127); // A
    vertex( 128, i, -127); // F
    vertex( 128, i,  128); // G
    endShape(CLOSE);
  }
  
  
}

void drawCube() {
  
  noFill();
  if (!wireframeEnabled) fill(41, 178, 34); // Verde
  beginShape();
  vertex(a.x, a.y, a.z); // A
  vertex(b.x, b.y, b.z); // B
  vertex(c.x, c.y, c.z); // C
  vertex(d.x, d.y, d.z); // D
  endShape();
  
  if (!wireframeEnabled) fill(255, 255, 0); // Magenta
  beginShape();
  vertex(e.x, e.y, e.z); // E
  vertex(f.x, f.y, f.z); // F
  vertex(a.x, a.y, a.z); // A
  vertex(d.x, d.y, d.z); // D
  endShape();
  
  if (!wireframeEnabled) fill(0, 0, 255); // Azul
  beginShape();
  vertex(b.x, b.y, b.z); // B
  vertex(a.x, a.y, a.z); // A
  vertex(f.x, f.y, f.z); // F
  vertex(g.x, g.y, g.z); // G
  endShape();
  
  if (!wireframeEnabled) fill(0, 162, 255);
  beginShape();
  vertex(h.x, h.y, h.z); // H
  vertex(c.x, c.y, c.z); // C
  vertex(b.x, b.y, b.z); // B
  vertex(g.x, g.y, g.z); // G
  endShape();
  
  if (!wireframeEnabled) fill(255, 127, 39);
  beginShape();
  vertex(h.x, h.y, h.z); // H
  vertex(g.x, g.y, g.z); // G
  vertex(f.x, f.y, f.z); // F
  vertex(e.x, e.y, e.z); // E
  endShape();
  
  if (!wireframeEnabled) fill(181, 230, 29);
  beginShape();
  vertex(h.x, h.y, h.z); // H
  vertex(e.x, e.y, e.z); // E
  vertex(d.x, d.y, d.z); // D
  vertex(c.x, c.y, c.z); // C
  endShape();
  
}

void drawPyramid() {
  noFill();
  int pyraTopx = 0;
  int pyraTopy = -100;
  int pyraTopz = 0;
  
  if (!wireframeEnabled) fill(150);
  beginShape();
    vertex(d.x, d.y, d.z); // D
    vertex(e.x, e.y, e.z); // E
    vertex( pyraTopx, pyraTopy, pyraTopz);
  endShape();
  
  if (!wireframeEnabled) fill(100);
  beginShape();
    vertex(e.x, e.y, e.z); // E
    vertex(h.x, h.y, h.z); // H
    vertex( pyraTopx, pyraTopy, pyraTopz);
  endShape();
  
  if (!wireframeEnabled) fill(150);
  beginShape();  
    vertex(h.x, h.y, h.z); // H
    vertex(c.x, c.y, c.z); // C
    vertex( pyraTopx, pyraTopy, pyraTopz);
  endShape();
  
  if (!wireframeEnabled) fill(100);
  beginShape();  
    vertex(c.x, c.y, c.z); // C
    vertex(d.x, d.y, d.z); // D
    vertex( pyraTopx, pyraTopy, pyraTopz);
  endShape();
  
  if (!wireframeEnabled) fill(150);
  beginShape();
    vertex(d.x, d.y, d.z); // D
    vertex(c.x, c.y, c.z); // C
    vertex(h.x, h.y, h.z); // H
    vertex(e.x, e.y, e.z); // E
  endShape();
  
}

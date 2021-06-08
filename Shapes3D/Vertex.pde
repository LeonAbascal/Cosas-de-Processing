public class Vertex {
  public int x;
  public int y;
  public int z;
  
  public Vertex(int x, int y, int z) {
    this.x = x;
    this.y = y;
    this.z = z;
    
  }
  
  public Vertex() {
    this.x = 0;
    this.y = 0;
    this.z = 0;
  }
  
};

Vertex a, b, c, d, e, f, g, h;
void initCommonVertexes() {
  /*
  vertex(a.x, a.y, a.z); // A
  vertex(b.x, b.y, b.z); // B
  vertex(c.x, c.y, c.z); // C
  vertex(d.x, d.y, d.z); // D
  vertex(e.x, e.y, e.z); // E
  vertex(f.x, f.y, f.z); // F
  vertex(g.x, g.y, g.z); // G
  vertex(h.x, h.y, h.z); // H
  
  */
  a = new Vertex(-100, -100, -100);
  b = new Vertex(-100, -100,  100);
  c = new Vertex(-100,  100,  100);
  d = new Vertex(-100,  100, -100);
  
  e = new Vertex( 100,  100, -100);
  f = new Vertex( 100, -100, -100);
  g = new Vertex( 100, -100,  100);
  h = new Vertex( 100,  100,  100);  
  
}

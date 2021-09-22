import processing.sound.*;

SinOsc[] sineWaves;
float[] sineFreqs;
int numSines = 5;

void setup() {
  size(400, 300);
  background(0);
  
  sineWaves = new SinOsc[numSines];
  sineFreqs = new float[numSines];
  
  for (int i = 0; i < numSines; i++) {
    float sineVolume = (1.0 / numSines) / (i + 1);
    sineWaves[i] = new SinOsc(this);
    sineWaves[i].play();
    sineWaves[i].amp(sineVolume);
  }
  
}

void draw() {
  float yoffset = map(mouseY, 0, height, 0, 1);
  float frequency = pow(1000, yoffset) + 150;
  float detune = map(mouseX, 0, width, -0.5, 0.5);
  
  for (int i = 0; i < numSines; i++) {
    sineFreqs[i] = frequency * (i + detune);
    println(sineFreqs[i]);
    sineWaves[i].freq(sineFreqs[i]);
  }
  
}

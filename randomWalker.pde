Walker walkman;
PVector distance;

void setup(){
  size(400, 400);
  distance = new PVector(200, 200);  
  walkman = new Walker(distance);
}


void draw(){
  
  walkman.update();
  
}
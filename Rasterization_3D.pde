PImage img;
void setup(){
  size(900,900,P3D);
  img = loadImage("pretty1.jpg");
  img.resize(900,900);
}
void draw(){
  background(0);
  fill(0);
  noStroke();
  sphereDetail(3);
  
  fill(230,0,20);
  float tiles=100;
  float tileSize=width/tiles;
  push();
  translate(width/2,height/2);
  rotateY(radians(frameCount*0.5));
  for(int x=0;x<tiles;x++){
     for(int y=0; y<tiles;y++){
       color c=img.get(int(x*tileSize),int(y*tileSize));
       float b= map(brightness(c),0,255,0,1);
       
       float z=map(b,0,1,-100,100);
       
       push();
       translate(x*tileSize-width/2,y*tileSize-height/2,z);
       sphere(tileSize*b*0.6);
       pop();
     }
  }
  
  pop();
}

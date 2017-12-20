
String sensors;
float [] sensorval;
String[] splitsensor;
//int sensors;

void setup(){
    fullScreen();
    background(255);
    rectMode(CENTER);

}


void draw(){


    color white = color(255,255,255);

    float X = mouseX;            
    float Y = mouseY;
    

      

    
    float LEDsize = height/3;
    float left = width/2 - 0.5*LEDsize;
    float right = width/2 + 0.5*LEDsize;
    
    float upper = height/2 - 0.5*LEDsize;
    float down = height/2 + 0.5*LEDsize;
    

    float maxSize = 255;
    float scale = 0.3;
    color LeftUpper = color(maxSize - scale*dist(X, Y, left, upper), 0, scale*dist(X, Y, left, upper));
    color LeftDown = color(maxSize - scale*dist(X, Y, left, down), 0, scale*dist(X, Y, left, down));
    color RightUpper = color(maxSize - scale*dist(X, Y, right, upper), 0, scale*dist(X, Y, right, upper));
    color RightDown = color(maxSize - scale*dist(X, Y, right, down), 0, scale*dist(X, Y, right, down));
    
    background(0);                  
    
    noStroke();
    fill(LeftUpper);
    rect(left, upper, LEDsize, LEDsize);
    fill(LeftDown);
    rect(left, down, LEDsize, LEDsize);

    fill(RightUpper);
    rect(right, upper, LEDsize, LEDsize);
    fill(RightDown);
    rect(right, down, LEDsize, LEDsize);
    
   
   
   noFill();
   stroke(255);
   strokeWeight(50);
   strokeCap(ROUND);
   line(width/2-6*LEDsize/5, height/3, width/2-6*LEDsize/5, down+LEDsize/2);
   arc(left-LEDsize/2, down+LEDsize/2, 2*( (left-LEDsize/2)-(width/2-6*LEDsize/5)), 2*((left-LEDsize/2)-(width/2-6*LEDsize/5)), HALF_PI, PI);
   line(left-LEDsize/2, height/2+6*LEDsize/5, right+LEDsize/2, height/2+6*LEDsize/5);
   arc(right+LEDsize/2, down+LEDsize/2, 2*( (left-LEDsize/2)-(width/2-6*LEDsize/5)), 2*((left-LEDsize/2)-(width/2-6*LEDsize/5)), 0, HALF_PI);
   line(width/2+6*LEDsize/5, height/3, width/2+6*LEDsize/5, down+LEDsize/2);
   
}
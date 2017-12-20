import processing.serial.*;
Serial myPort;
String sensors;
float [] sensorval;
String[] splitsensor;
//int sensors;

void setup(){
    fullScreen();
    background(255);
    rectMode(CENTER);

      //String portName = Serial.list()[0];
 // myPort = new Serial(this, portName, 9600);
}


void draw(){
    /////////////////////////////////
    ////  Pressure point values  ////
    /////////////////////////////////
    //color
    
    //  if (myPort.available() > 0) {
    //sensors = myPort.readStringUntil('\n');
  
//
  //if(sensors !=null){
  //    splitsensor = split(sensors, ',');
  //    sensorval = float(splitsensor);
  //    println(splitsensor[0]);


    color white = color(255,255,255);
   // sensorval = float(sensors);
    //location
    float X = mouseX;            
    float Y = mouseY;
    
    //size
    float sizePP = 50;
      
    //////////////////////
    ////  LED values  ////
    //////////////////////
    
    //color LEDs
    //color LED = color(96, 174, 200);
    
    float LEDsize = height/3;
    //Location values x
    float left = width/2 - 0.5*LEDsize;
    //float middleX = width/2;
    float right = width/2 + 0.5*LEDsize;
    
    //Location values y
    float upper = height/2 - 0.5*LEDsize;
   // float middleY = height/2;
    float down = height/2 + 0.5*LEDsize;
    
    //Size values

    float maxSize = 255;
    float scale = 0.3;
    color LeftUpper = color(maxSize - scale*dist(X, Y, left, upper), 0, scale*dist(X, Y, left, upper));
    //color LeftMiddle = color(maxSize - scale*dist(X, Y, left, middleY), 0, scale*dist(X, Y, left, middleY));
    color LeftDown = color(maxSize - scale*dist(X, Y, left, down), 0, scale*dist(X, Y, left, down));
    //color MiddleUpper = color(maxSize - scale*dist(X, Y, middleX, upper), 0, scale*dist(X, Y, middleX, upper));
    //color MiddleMiddle = color(maxSize - scale*dist(X, Y, middleX, middleY), 0, scale*dist(X, Y, middleX, middleY));
    //color MiddleDown = color(maxSize - scale*dist(X, Y, middleX, down), 0, scale*dist(X, Y, middleX, down));
    color RightUpper = color(maxSize - scale*dist(X, Y, right, upper), 0, scale*dist(X, Y, right, upper));
    //color RightMiddle = color(maxSize - scale*dist(X, Y, right, middleY), 0, scale*dist(X, Y, right, middleY));
    color RightDown = color(maxSize - scale*dist(X, Y, right, down), 0, scale*dist(X, Y, right, down));
    
    //if (LeftUpper<0){                                        //If radius is negative, make it zero
    //    LeftUpper = 0;
    //}
    
    //if (LeftMiddle<0){
    //    LeftMiddle = 0;
    //}
    
    //if (LeftDown<0){
    //    LeftDown = 0;
    //}
    
    //if (MiddleUpper<0){
    //    MiddleUpper = 0;
    //}
    
    //if (MiddleMiddle<0){
    //    MiddleMiddle = 0;
    //}
    
    //if (MiddleDown<0){
    //    MiddleDown = 0;
    //}
    
    //if (RightUpper<0){
    //    RightUpper = 0;
    //}
    
    //if (RightMiddle<0){
    //    RightMiddle = 0;
    //}
    
    //if (RightDown<0){
    //    RightDown = 0;
    //}
    
    
    /////////////////////////
    ////  start drawing  ////
    /////////////////////////  
    
    background(0);                      //reset drawing
    
    noStroke();
    //strokeWeight(4);
    
    
    
    
    
    //draw LEDs
//    fill(MiddleMiddle);
  //  rect(middleX, middleY, LEDsize, LEDsize);
    //fill(MiddleUpper);
    //rect(middleX, upper, LEDsize, LEDsize);
    //fill(MiddleDown);
 //   rect(middleX, down, LEDsize, LEDsize);
   // fill(LeftMiddle);
  //  rect(left, middleY, LEDsize, LEDsize);
    fill(LeftUpper);
    rect(left, upper, LEDsize, LEDsize);
    fill(LeftDown);
    rect(left, down, LEDsize, LEDsize);
  //  fill(RightMiddle);
//    rect(right, middleY, LEDsize, LEDsize);
    fill(RightUpper);
    rect(right, upper, LEDsize, LEDsize);
    fill(RightDown);
    rect(right, down, LEDsize, LEDsize);
    
    //fill(LED, 100);
    //rect(middleX, middleY, MiddleMiddle, MiddleMiddle);
    //rect(middleX, upper, MiddleUpper, MiddleUpper);
    //rect(middleX, down, MiddleDown, MiddleDown);
    //rect(left, middleY, LeftMiddle, LeftMiddle);
    //rect(left, upper, LeftUpper, LeftUpper);
    //rect(left, down, LeftDown, LeftDown);
    //rect(right, middleY, RightMiddle, RightMiddle);
    //rect(right, upper, RightUpper, RightUpper);
    //rect(right, down, RightDown, RightDown);
    
    //Draw pressure point over LEDs
   // fill(PressurePoint);
   /// rect(X, Y, sizePP, sizePP);
    //delay(200);
   // sensors = Serial
   
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
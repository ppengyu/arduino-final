import processing.serial.*;
Serial myPort;
String val;
PFont f;

void setup(){
  size(800,600);
  background(255,0,0);
  //Int portName = Serial.list()[1];
  myPort = new Serial(this,Serial.list()[1],9600);
  myPort.bufferUntil('\n');
  f = createFont("Arial",16,true); // STEP 2 Create Font
}

void draw(){
  if (myPort.available()>0){
    val = myPort.readStringUntil(';');
  }
  
  if(val != null){
  String valueWithoutColon = val.substring(0, val.length()-1);
  //println(valueWithoutColon);
  int number = int(valueWithoutColon);
  
  //float newNumber = map(number,70,255,0,255);
  println(number);
  background(number);
  
  
  
  if(number<80){
    textFont(f,50);                  // STEP 3 Specify font to be used
    fill(255-number);                         // STEP 4 Specify font color 
    text("DANGER,COLD!",100,200);   // STEP 5 Display Text
    text("BACK TO SHELTER",100,300);   // STEP 5 Display Text
      
  }else if(number>190){
    textFont(f,50);                  // STEP 3 Specify font to be used
    fill(255-number);                         // STEP 4 Specify font color 
    text("WARNING!HIGH TEMP!",100,200);   // STEP 5 Display Text
    text("DEHYRATE!",200,300);   // STEP 5 Display Text
    
  }else{
    textFont(f,50);                  // STEP 3 Specify font to be used
    fill(255-number);                         // STEP 4 Specify font color 
    text("HYDRATE!PEACE TIME!",100,200);   // STEP 5 Display Text
    text("STORE FOOD!",100,300);   // STEP 5 Display Text
  
  }else{
    
    textFont(f,50);                  // STEP 3 Specify font to be used
    fill(255-number);                         // STEP 4 Specify font color 
    text("SIGNAL CONNECTING",100,200);   // STEP 5 Display Text
  
  }
  
  
  }
  //print(number);
  //print(number+10);
}

//void serialEvent(Serial myPort){
  
//  val = myPort.read();
  
//  println(val);
  
  
    
//  }


//void draw(){
 
//}
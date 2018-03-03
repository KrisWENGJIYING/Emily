import processing.serial.*;

Serial myPort;
int sval;


void setupSerial(){
  printArray(Serial.list());
  String portName = Serial.list()[1];
  myPort = new Serial(this, portName, 9600);
}

void runSerial(){
  if ( myPort.available() > 0) {
    sval = myPort.read();
 }
  
  println(sval);
}



    
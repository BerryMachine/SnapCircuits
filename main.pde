Component battery;
Component c;
import g4p_controls.*;
boolean creating = false;
ArrayList<Component> components = new ArrayList<Component>();

void setup(){
  size(800,800);
  battery = new Component("battery", 100,100,100);
  //battery.drawMe();
  
  createGUI();

}

void draw(){
  background(100,100,100);
  
  for(Component c: components){
    c.drawMe();
  }
  
  //battery.drawMe();


}

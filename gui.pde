/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:277719:
  appc.background(230);
} //_CODE_:window1:277719:

public void addBatteryClicked(GButton source, GEvent event) { //_CODE_:addBattery:517943:
  //components.add(new Component("battery", 100,100,100));
  //components.get(components.size()-1).drawMe();
  creating = true;
} //_CODE_:addBattery:517943:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 240, 120, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  addBattery = new GButton(window1, 80, 45, 80, 30);
  addBattery.setText("Add Battery");
  addBattery.addEventHandler(this, "addBatteryClicked");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton addBattery; 

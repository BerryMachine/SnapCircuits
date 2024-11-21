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
  create_component_type = "battery";
  creating = true;
} //_CODE_:addBattery:517943:

public void addWireClicked(GButton source, GEvent event) { //_CODE_:addWire:837893:
  create_component_type = "wire";
  creating = true;

} //_CODE_:addWire:837893:

public void selectLayerPicked(GDropList source, GEvent event) { //_CODE_:selectLayer:676007:
  if(selectLayer.getSelectedText().contains("1")){
    selected_layer = layer_1;

  }else if(selectLayer.getSelectedText().contains("2")){
    selected_layer = layer_2;

  }else if(selectLayer.getSelectedText().contains("3")){
      selected_layer = layer_3;
  
  }else if(selectLayer.getSelectedText().contains("4")){
      selected_layer = layer_4;
      
      
  }
  else if(selectLayer.getSelectedText().contains("Simple Circuit")){
   selected_layer = layer_5; 
    draw_sim();
    frame = 0;

  }
  
} //_CODE_:selectLayer:676007:

public void addLightbulbClicked(GButton source, GEvent event) { //_CODE_:addLightbulb:988807:
  create_component_type = "lightbulb";
  creating = true;
} //_CODE_:addLightbulb:988807:

public void deleteClicked(GButton source, GEvent event) { //_CODE_:delete:448134:
  deleting = true;
} //_CODE_:delete:448134:

public void showGridClicked(GCheckbox source, GEvent event) { //_CODE_:showGrid:970966:
  if(showGrid.isSelected()){
    gridShowing = true;
    
  }else{
    gridShowing = false;
  }
} //_CODE_:showGrid:970966:

public void clearClicked(GButton source, GEvent event) { //_CODE_:clear:830938:
  selected_layer.clear();
} //_CODE_:clear:830938:

public void fileNameEntered(GTextField source, GEvent event) { //_CODE_:fileName:875264:

} //_CODE_:fileName:875264:

public void saveSnapshotClicked(GButton source, GEvent event) { //_CODE_:saveSnapshot:556675:
  if(fileName.getText()!=""){
     save(fileName.getText() + ".png");
     fileName.setPromptText("Enter File Name");

  }else{
      save("circuit" + str(numFiles) + ".png");
      numFiles++;
  
  }
} //_CODE_:saveSnapshot:556675:

public void voltageChanged(GSlider source, GEvent event) { //_CODE_:voltage:652276:
  speed = voltage.getValueI();
  int i = 0;
  for(PVector pos:positions){
      if (pos.x >= grid_size*10 && pos.y >= grid_size*4){
        velocities.get(i).x = 0; 
        velocities.get(i).y = speed; 
       }
       if(pos.y>=grid_size*6 && pos.x >=grid_size*10){
        velocities.get(i).x = -speed; 
        velocities.get(i).y = 0; 
       }
       if (pos.x<= grid_size*4 && pos.y >= grid_size*6){
        velocities.get(i).x = 0; 
        velocities.get(i).y = -speed; 
       }
       if (pos.x<= grid_size*4 && pos.y <= grid_size*4){
        velocities.get(i).x = speed; 
        velocities.get(i).y = 0; 
       }
  
  }
} //_CODE_:voltage:652276:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 350, 350, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  addBattery = new GButton(window1, 100, 100, 30, 30);
  addBattery.setText("+");
  addBattery.addEventHandler(this, "addBatteryClicked");
  addWire = new GButton(window1, 100, 150, 30, 30);
  addWire.setText("+");
  addWire.addEventHandler(this, "addWireClicked");
  selectLayer = new GDropList(window1, 97, 54, 95, 96, 5, 10);
  selectLayer.setItems(loadStrings("list_676007"), 0);
  selectLayer.addEventHandler(this, "selectLayerPicked");
  batteryLabel = new GLabel(window1, 10, 105, 80, 20);
  batteryLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  batteryLabel.setText("BATTERY");
  batteryLabel.setOpaque(false);
  label2 = new GLabel(window1, 10, 155, 80, 20);
  label2.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label2.setText("WIRE");
  label2.setOpaque(false);
  label3 = new GLabel(window1, 10, 55, 80, 30);
  label3.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label3.setText("SELECT LAYER");
  label3.setOpaque(false);
  label4 = new GLabel(window1, 10, 205, 80, 20);
  label4.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label4.setText("LED");
  label4.setOpaque(false);
  addLightbulb = new GButton(window1, 100, 200, 30, 30);
  addLightbulb.setText("+");
  addLightbulb.addEventHandler(this, "addLightbulbClicked");
  delete = new GButton(window1, 5, 300, 150, 30);
  delete.setText("DELETE COMPONENT");
  delete.addEventHandler(this, "deleteClicked");
  showGrid = new GCheckbox(window1, 10, 10, 120, 20);
  showGrid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showGrid.setText("SHOW GRID");
  showGrid.setOpaque(false);
  showGrid.addEventHandler(this, "showGridClicked");
  showGrid.setSelected(true);
  clear = new GButton(window1, 195, 300, 150, 30);
  clear.setText("CLEAR LAYER");
  clear.addEventHandler(this, "clearClicked");
  fileName = new GTextField(window1, 10, 250, 220, 30, G4P.SCROLLBARS_NONE);
  fileName.setPromptText("Enter File Name");
  fileName.setOpaque(true);
  fileName.addEventHandler(this, "fileNameEntered");
  saveSnapshot = new GButton(window1, 240, 250, 100, 30);
  saveSnapshot.setText("Save Snapshot");
  saveSnapshot.addEventHandler(this, "saveSnapshotClicked");
  voltage = new GSlider(window1, 240, 0, 100, 40, 10.0);
  voltage.setLimits(1, 1, 5);
  voltage.setNumberFormat(G4P.INTEGER, 0);
  voltage.setOpaque(false);
  voltage.addEventHandler(this, "voltageChanged");
  label1 = new GLabel(window1, 135, 10, 100, 20);
  label1.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  label1.setText("VOLTAGE:");
  label1.setOpaque(false);
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton addBattery; 
GButton addWire; 
GDropList selectLayer; 
GLabel batteryLabel; 
GLabel label2; 
GLabel label3; 
GLabel label4; 
GButton addLightbulb; 
GButton delete; 
GCheckbox showGrid; 
GButton clear; 
GTextField fileName; 
GButton saveSnapshot; 
GSlider voltage; 
GLabel label1; 

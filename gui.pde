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

//GUIs

public void addBatteryClicked(GButton source, GEvent event) { //_CODE_:addBattery:517943:
  //components.add(new Component("battery", 100,100,100));
  //components.get(components.size()-1).drawMe();
  if(selected_layer!=layer_5){
    create_component_type = "battery";
    creating = true;
  }
  
    
  
} //_CODE_:addBattery:517943:

public void addWireClicked(GButton source, GEvent event) { //_CODE_:addWire:837893:
  if(selected_layer!=layer_5){
  create_component_type = "wire";
  creating = true;
  
  }

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
    message.setVisible(true);


  }
  
  if(selectLayer.getSelectedText().contains("Simple Circuit") == false){
    message.setVisible(false);
    positions.clear();
    velocities.clear();
  }
  
} //_CODE_:selectLayer:676007:

public void addLightbulbClicked(GButton source, GEvent event) { //_CODE_:addLightbulb:988807:
  if(selected_layer!=layer_5){
  create_component_type = "lightbulb";
  creating = true;
  }
} //_CODE_:addLightbulb:988807:

public void deleteClicked(GButton source, GEvent event) { //_CODE_:delete:448134:
  if(selected_layer!=layer_5){
    deleting = true;

  }
} //_CODE_:delete:448134:

public void clearClicked(GButton source, GEvent event) { //_CODE_:clear:830938:
  if(selected_layer!=layer_5){
     selected_layer.clear();

  }
} //_CODE_:clear:830938:

public void fileNameEntered(GTextField source, GEvent event) { //_CODE_:fileName:875264:

} //_CODE_:fileName:875264:

public void saveSnapshotClicked(GButton source, GEvent event) { //_CODE_:saveSnapshot:556675:
  if(fileName.getText().trim()!=""){
     save(fileName.getText() + ".png");
     fileName.setPromptText("Enter File Name");

  }else{
      save("circuit" + str(numFiles) + ".png");
      numFiles++;
  
  }
} //_CODE_:saveSnapshot:556675:

public void showGridChanged(GCheckbox source, GEvent event) { //_CODE_:showGrid:796311:
  if(showGrid.isSelected()){
      gridShowing = true;

  }else{
        gridShowing = false;
  }
    
} //_CODE_:showGrid:796311:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Control Window", 0, 0, 350, 350, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  addBattery = new GButton(window1, 100, 100, 30, 30);
  addBattery.setText("+");
  addBattery.addEventHandler(this, "addBatteryClicked");
  addWire = new GButton(window1, 100, 150, 30, 30);
  addWire.setText("+");
  addWire.addEventHandler(this, "addWireClicked");
  selectLayer = new GDropList(window1, 97, 44, 95, 96, 5, 10);
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
  label3 = new GLabel(window1, 10, 45, 80, 30);
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
  message = new GLabel(window1, 10, 80, 200, 20);
  message.setText("*This Layer Cannot Be Edited.");
  message.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  message.setOpaque(false);
  showGrid = new GCheckbox(window1, 10, 10, 120, 20);
  showGrid.setIconAlign(GAlign.LEFT, GAlign.MIDDLE);
  showGrid.setText("SHOW GRID");
  showGrid.setOpaque(false);
  showGrid.addEventHandler(this, "showGridChanged");
  showGrid.setSelected(true);
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
GButton clear; 
GTextField fileName; 
GButton saveSnapshot; 
GLabel message; 
GCheckbox showGrid; 

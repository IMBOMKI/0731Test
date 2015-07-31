// Test

import fisica.*;

FWorld world; 
int canvas_width=900;
int canvas_height=500;
color ProtonColor = #FF0000;
color NeutronColor = #47FF00;
color ElectronColor = #FFEA00;


Proton protButton;
Neutron neutButton;
Electron elecButton;





void setup(){
  size(canvas_width,canvas_height);
  smooth();
  
  Fisica.init(this);
  world = new FWorld();
  
  world.setEdges();
  world.setGravity(0,500);
  world.setEdgesRestitution(0.5);
  
  protButton = new Proton(0);
  world.add(protButton);
  protButton.Button();
  
  neutButton = new Neutron(0);
  world.add(neutButton);
  neutButton.Button();
  
  elecButton = new Electron(0);
  world.add(elecButton);
  elecButton.Button();

//// need to make a injector



////
 
}

void draw(){
  background(255);  
  world.step();
  world.draw();
}


void mousePressed(){
FBody pressed = world.getBody(mouseX, mouseY);
  if (pressed == protButton){
    Proton prot = new Proton(0);
    world.add(prot);  
  }
  
  else if (pressed == neutButton){
    Neutron neut = new Neutron(0); 
    world.add(neut);
  }
  
  else if (pressed == elecButton){
    Electron elec = new Electron(0);
    world.add(elec);
  }
  
}


class Proton extends FCircle{

  
Proton(float rad){
super(rad=20); 
setFillColor(ProtonColor);
setNoStroke();
setPosition(30,350);

}

void Button()
{
  setPosition(30,30);
  setStaticBody(true);
}
  
}

class Neutron extends FCircle{

Neutron(float rad){
super(rad=20); 
setFillColor(NeutronColor);
setNoStroke();
setPosition(30,350);
}

void Button()
{
  setPosition(60,30);
  setStaticBody(true);
  setDensity(0);
}
  
}

class Electron extends FCircle{
 
Electron(float rad){
super(rad=13); 
setFillColor(ElectronColor);
setNoStroke();
setPosition(30,350);
}

void Button()
{
  setPosition(90,30);
  setStaticBody(true);
}
  
}

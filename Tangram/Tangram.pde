 /* COLORES */
  
    color amarillo   = color(255, 255, 0);
    color aguamarina = color(102, 255, 178);
    color naranja    = color(255, 130, 0);
    color azul       = color(50, 180, 245);
    color verde      = color(0, 153, 0);
    color rojo       = color(204, 0, 0);
    color morado     = color(152, 0, 56);
  
 /* TRANSFORMACIONES */
 
   float xTriGrande1 = 0;
   float yTriGrande1 = 0;
   float rTriGrande1 = 0;
   float cxTriGrande1 = 240;
   float cyTriGrande1 = 90;
   
   float xTriGrande2 = 480;
   float yTriGrande2 = 0;
   float rTriGrande2 = 90;
   float cxTriGrande2 = 90;
   float cyTriGrande2 = 240;
   
   float xTriMediano = 240;
   float yTriMediano = 480;
   float rTriMediano = 180;
   float cxTriMediano = 170;
   float cyTriMediano = 70;
   
   float xTriPequeno1 = 480;
   float yTriPequeno1 = 480;
   float rTriPequeno1 = 180;
   float cxTriPequeno1 = 120;
   float cyTriPequeno1 = 50;
   
   float xTriPequeno2 = 120;
   float yTriPequeno2 = 360;
   float rTriPequeno2 = 270;
   float cxTriPequeno2 = 50;
   float cyTriPequeno2 = 120;
   
   float xCuadrado = 240; 
   float yCuadrado = 240;
   float rCuadrado = 45;
   float cyCuadrado = 120;
   
   float xTrapezoide = 0;
   float yTrapezoide = 0;
   float rTrapezoide = 0;
   float cxTrapezoide = 60;
   float cyTrapezoide = 180;



void setup(){
  size(1200, 600);
  noStroke();
}

void draw(){
  
    background(100, 100, 100);
    //translate(360,60);
  
 /* FIGURAS */
    
    // Triángulo Grande 1
      pushStyle();
      pushMatrix();
        translate (xTriGrande1, yTriGrande1);
        rotate (radians(rTriGrande1));
        fill (amarillo);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
    
    // Triángulo Grande 2
      pushStyle();
      pushMatrix();
        translate (xTriGrande2, yTriGrande2);
        rotate (radians(rTriGrande2));
        fill (aguamarina);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Mediano
      pushStyle();
      pushMatrix();
        translate (xTriMediano, yTriMediano);
        rotate (radians(rTriMediano));
        fill (naranja);
        triangle (0, 0, 240, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 1
      pushStyle();
      pushMatrix();
        translate (xTriPequeno1, yTriPequeno1);
        rotate (radians(rTriPequeno1));
        fill (azul);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 2
      pushStyle();
      pushMatrix();
        translate (xTriPequeno2, yTriPequeno2);
        rotate (radians(rTriPequeno2));
        fill (verde);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Cuadrado
      pushStyle();
      pushMatrix();
        translate (xCuadrado, yCuadrado);
        rotate (radians(rCuadrado));
        fill (rojo);
        rect (0, 0, sqrt(28800), sqrt(28800));
      popStyle();
      popMatrix();
      
    // Trapezoide
      pushStyle();
      pushMatrix();
        translate (xTrapezoide, yTrapezoide);
        rotate (radians(rTrapezoide));
        fill (morado);
        quad (0, 0, 120, 120, 120, 360, 0, 240);
      popStyle();
      popMatrix();
  
  /* MOVIMIENTO */
  
        int colorMouse = get(mouseX, mouseY);
  
      // Triángulo Grande 1
  
        if (colorMouse == amarillo){
          if (mousePressed && mouseButton == LEFT) {
            xTriGrande1 = mouseX - cxTriGrande1;
            yTriGrande1 = mouseY - cyTriGrande1;
          }          
        }        
        
      // Triángulo Grande 2
        
        if (colorMouse == aguamarina){          
          if (mousePressed && mouseButton == LEFT) {
            xTriGrande2 = mouseX + cxTriGrande2;
            yTriGrande2 = mouseY - cyTriGrande2;
          } 
        }        
        
      // Triángulo Mediano

        if (colorMouse == naranja){          
          if (mousePressed && mouseButton == LEFT) {
            xTriMediano = mouseX + cxTriMediano;
            yTriMediano = mouseY + cyTriMediano;
          }
        }        
        
      // Triángulo Pequeño 1
  
        if (colorMouse == azul){
          if (mousePressed && mouseButton == LEFT) {
            xTriPequeno1 = mouseX + cxTriPequeno1;
            yTriPequeno1 = mouseY + cyTriPequeno1;
          }
        }        
        
      // Triángulo Pequeño 2
  
        if (colorMouse == verde){
          if (mousePressed && mouseButton == LEFT) {
            xTriPequeno2 = mouseX - cxTriPequeno2;
            yTriPequeno2 = mouseY + cyTriPequeno2;
          }
        }        
        
      // Cuadrado
  
        if (colorMouse == rojo){
          if (mousePressed && mouseButton == LEFT) {
            xCuadrado = mouseX;
            yCuadrado = mouseY - cyCuadrado;
          }
        }        
        
      // Trapezoide
  
        if (colorMouse == morado){
          if (mousePressed && mouseButton == LEFT) {
            xTrapezoide = mouseX - cxTrapezoide;
            yTrapezoide = mouseY - cyTrapezoide;
          }
        }    
};
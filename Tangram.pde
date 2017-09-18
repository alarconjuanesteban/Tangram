/* COLORES */
                    
    color fondo      = color(100, 100, 100), 
          amarillo   = color(255, 255, 0),
          aguamarina = color(102, 255, 178),
          naranja    = color(255, 130, 0),
          azul       = color(50, 180, 245),
          verde      = color(0, 153, 0),
          rojo       = color(204, 0, 0),
          morado     = color(152, 0, 56);
  
 /* TRANSFORMACIONES */
 
   int ctrlMov;
   
   float xMedioTriGrande1 = random(550, 650),
         yMedioTriGrande1 = random(250, 350),
         xTriGrande1,
         yTriGrande1,
         rAproxTriGrande1 = random(1,8);
   int rTriGrande1 = (int) rAproxTriGrande1;
   
   float xMedioTriGrande2 = random(550, 650),
         yMedioTriGrande2 = random(250, 350),
         xTriGrande2,
         yTriGrande2,
         rAproxTriGrande2 = random(1,8);
   int rTriGrande2 = (int) rAproxTriGrande2;
   
   float xMedioTriMediano = random(550, 650),
         yMedioTriMediano = random(250, 350),
         xTriMediano,
         yTriMediano,
         rAproxTriMediano = random(1,8);
   int rTriMediano = (int) rAproxTriMediano;
   
   float xMedioTriPequeno1 = random(550, 650),
         yMedioTriPequeno1 = random(250, 350),
         xTriPequeno1,
         yTriPequeno1,
         rAproxTriPequeno1 = random(1,8);
   int rTriPequeno1 = (int) rAproxTriPequeno1;

   float xMedioTriPequeno2 = random(550, 650),
         yMedioTriPequeno2 = random(250, 350),
         xTriPequeno2,
         yTriPequeno2,
         rAproxTriPequeno2 = random(1,8);
   int rTriPequeno2 = (int) rAproxTriPequeno2;
   
   float xMedioCuadrado = random(550, 650),
         yMedioCuadrado = random(250, 350),
         xCuadrado, 
         yCuadrado,
         rAproxCuadrado = random(1,8);
   int rCuadrado = (int) rAproxCuadrado;
   
   float xMedioTrapezoide = random(550, 650),
         yMedioTrapezoide = random(250, 350),
         xTrapezoide,
         yTrapezoide,
         rAproxTrapezoide = random(1,8);
   int rTrapezoide = (int) rAproxTrapezoide;


void setup(){
  size(1200, 600);
  noStroke();
}

void draw(){
  
    background(fondo);
  
 /* FIGURAS */
    
    // Triángulo Grande 1
      pushStyle();
      pushMatrix();
        translate (xMedioTriGrande1 + xTriGrande1,
                   yMedioTriGrande1 + yTriGrande1);
        rotate (rTriGrande1*radians(45));
        scale(0.5);
        fill (amarillo);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
    
    // Triángulo Grande 2
      pushStyle();
      pushMatrix();
        translate (xMedioTriGrande2 + xTriGrande2,
                   yMedioTriGrande2 + yTriGrande2);
        rotate (rTriGrande2*radians(45));
        scale(0.5);
        fill (aguamarina);
        triangle (0, 0, 480, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Mediano
      pushStyle();
      pushMatrix();
        translate (xMedioTriMediano + xTriMediano,
                   yMedioTriMediano + yTriMediano);
        rotate (rTriMediano*radians(45));
        scale(0.5);
        fill (naranja);
        triangle (0, 0, 240, 0, 240, 240);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 1
      pushStyle();
      pushMatrix();
        translate (xMedioTriPequeno1 + xTriPequeno1,
                   yMedioTriPequeno1 + yTriPequeno1);
        rotate (rTriPequeno1*radians(45));
        scale(0.5);
        fill (azul);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Triángulo Pequeño 2
      pushStyle();
      pushMatrix();
        translate (xMedioTriPequeno2 + xTriPequeno2, 
                   yMedioTriPequeno2 + yTriPequeno2);
        rotate (rTriPequeno2*radians(45));
        scale(0.5);
        fill (verde);
        triangle (0, 0, 240, 0, 120, 120);
      popStyle();
      popMatrix();
      
    // Cuadrado
      pushStyle();
      pushMatrix();
        translate (xMedioCuadrado + xCuadrado,
                   yMedioCuadrado + yCuadrado);
        rotate (rCuadrado*radians(45));
        scale(0.5);
        fill (rojo);
        rect (0, 0, sqrt(28800), sqrt(28800));
      popStyle();
      popMatrix();
      
    // Trapezoide
      pushStyle();
      pushMatrix();
        translate (xMedioTrapezoide + xTrapezoide,
                   yMedioTrapezoide + yTrapezoide);
        rotate (rTrapezoide*radians(45));
        scale(0.5);
        fill (morado);
        quad (0, 0, 120, 120, 120, 360, 0, 240);
      popStyle();
      popMatrix();
  
  /* MOVIMIENTO */
  
    // Triángulo Grande 1
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 1)){
        xTriGrande1 += mouseX-pmouseX;
        yTriGrande1 += mouseY-pmouseY;
      }
      
    // Triángulo Grande 2
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 2)){
        xTriGrande2 += mouseX-pmouseX;
        yTriGrande2 += mouseY-pmouseY;
      }
      
    // Triángulo Mediano
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 3)){
        xTriMediano += mouseX-pmouseX;
        yTriMediano += mouseY-pmouseY;
      }
      
    // Triángulo Pequeño 1
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 4)){
        xTriPequeno1 += mouseX-pmouseX;
        yTriPequeno1 += mouseY-pmouseY;
      }
      
    // Triángulo Pequeño 2
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 5)){
        xTriPequeno2 += mouseX-pmouseX;
        yTriPequeno2 += mouseY-pmouseY;
      }
      
    // Cuadrado
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 6)){
        xCuadrado += mouseX-pmouseX;
        yCuadrado += mouseY-pmouseY;
      }
      
    // Trapezoide
  
      if (mousePressed && mouseButton == LEFT && (ctrlMov == 7)){
        xTrapezoide += mouseX-pmouseX;
        yTrapezoide += mouseY-pmouseY;
      }
};
        
  void mousePressed(){
    int colorMouse = get(mouseX, mouseY);
    if (mouseButton == LEFT && colorMouse == fondo){
      ctrlMov = 0;
    }
    if (mouseButton == LEFT && colorMouse == amarillo){
      ctrlMov = 1;
    }
    if (mouseButton == LEFT && colorMouse == aguamarina){
      ctrlMov = 2;
    }
    if (mouseButton == LEFT && colorMouse == naranja){
      ctrlMov = 3;
    }
    if (mouseButton == LEFT && colorMouse == azul){
      ctrlMov = 4;
    }
    if (mouseButton == LEFT && colorMouse == verde){
      ctrlMov = 5;
    }
    if (mouseButton == LEFT && colorMouse == rojo){
      ctrlMov = 6;
    }
    if (mouseButton == LEFT && colorMouse == morado){
      ctrlMov = 7;
    }
  }
  
/* RESET - PIEZA FUERA DEL CANVAS */
  
  void mouseReleased(){
    if (xTriGrande1 < 0      - xMedioTriGrande1 ||
        xTriGrande1 > width  - xMedioTriGrande1 ||
        yTriGrande1 < 0      - yMedioTriGrande1 ||
        yTriGrande1 > height - yMedioTriGrande1){
          xTriGrande1 = 0;
          yTriGrande1 = 0;
          rTriGrande1 = int(random(0,8));
    }
    if (xTriGrande2 < 0      - xMedioTriGrande2 ||
        xTriGrande2 > width  - xMedioTriGrande2 ||
        yTriGrande2 < 0      - yMedioTriGrande2 ||
        yTriGrande2 > height - yMedioTriGrande2){
          xTriGrande2 = 0;
          yTriGrande2 = 0;
          rTriGrande2 = int(random(0,8));
    }
    if (xTriMediano < 0      - xMedioTriMediano ||
        xTriMediano > width  - xMedioTriMediano ||
        yTriMediano < 0      - yMedioTriMediano ||
        yTriMediano > height - yMedioTriMediano){
          xTriMediano = 0;
          yTriMediano = 0;
          rTriMediano = int(random(0,8));
    }
    if (xTriPequeno1 < 0      - xMedioTriPequeno1 ||
        xTriPequeno1 > width  - xMedioTriPequeno1 ||
        yTriPequeno1 < 0      - yMedioTriPequeno1 ||
        yTriPequeno1 > height - yMedioTriPequeno1){
          xTriPequeno1 = 0;
          yTriPequeno1 = 0;
          rTriPequeno1 = int(random(0,8));
    }
    if (xTriPequeno2 < 0      - xMedioTriPequeno2 ||
        xTriPequeno2 > width  - xMedioTriPequeno2 ||
        yTriPequeno2 < 0      - yMedioTriPequeno2 ||
        yTriPequeno2 > height - yMedioTriPequeno2){
          xTriPequeno2 = 0;
          yTriPequeno2 = 0;
          rTriPequeno2 = int(random(0,8));
    }
    if (xCuadrado < 0      - xMedioCuadrado ||
        xCuadrado > width  - xMedioCuadrado ||
        yCuadrado < 0      - yMedioCuadrado ||
        yCuadrado > height - yMedioCuadrado){
          xCuadrado = 0;
          yCuadrado = 0;
          rCuadrado = int(random(0,8));
    }
    if (xTrapezoide < 0      - xMedioTrapezoide ||
        xTrapezoide > width  - xMedioTrapezoide ||
        yTrapezoide < 0      - yMedioTrapezoide ||
        yTrapezoide > height - yMedioTrapezoide){
          xTrapezoide = 0;
          yTrapezoide = 0;
          rTrapezoide = int(random(0,8));
    }
  }

/* ROTACIÓN */

  void mouseClicked(){
    int colorMouse = get(mouseX, mouseY);
    if (mouseButton == RIGHT && colorMouse == amarillo){
      rTriGrande1 = (rTriGrande1+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == aguamarina){
      rTriGrande2 = (rTriGrande2+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == naranja){
      rTriMediano = (rTriMediano+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == azul){
      rTriPequeno1 = (rTriPequeno1+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == verde){
      rTriPequeno2 = (rTriPequeno2+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == rojo){
      rCuadrado = (rCuadrado+1)%8;
    }
    if (mouseButton == RIGHT && colorMouse == morado){
      rTrapezoide = (rTrapezoide+1)%8;
    }
  }
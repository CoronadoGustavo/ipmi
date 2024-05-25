//CORONADO GUILLEN GUSTAVO EDUARDO
//Legajo 75708/9
//Comision 1

PImage mi_imagen0,mi_imagen1, mi_imagen2,mi_imagen3,mi_imagen4;
PFont  fuente;
int pantalla;
int segundos;
boolean activo;
String primerPeli, segundaPeli, tercerPeli;
int py,px,py2;

 void setup (){
   
   size (640,480); 
   py = -200;
   px = width;
   py2 = height;
      
   activo = false;
   pantalla =0;
   segundos = 0;
   fuente = loadFont("TrajanPro-Bold-48.vlw");
   
   mi_imagen0=loadImage("fondo0.jpg");
   mi_imagen1=loadImage("fondo1.jpg");
   mi_imagen2=loadImage("fondo2.jpg");
   mi_imagen3=loadImage("fondo3.jpg");
   mi_imagen4=loadImage("fondo4.png");  
        
   primerPeli= "En la primera película, 'La Comunidad del Anillo', Frodo y su grupo se aventuran en una épica misión para destruir un anillo maligno y evitar que caiga en manos del Señor Oscuro Sauron, enfrentando numerosos peligros en su camino.";
   segundaPeli ="En la segunda película, 'Las Dos Torres', la Comunidad del Anillo se divide y cada miembro emprende su propia aventura. Mientras Frodo y Sam viajan hacia Mordor, los demás luchan en varios frentes contra las fuerzas del mal que amenazan con dominar la Tierra Media.";
   tercerPeli= "En la tercera película, 'El Retorno del Rey', la épica batalla final por la Tierra Media decide el destino del mundo. Mientras tanto, Frodo y Sam luchan contra las fuerzas de la oscuridad mientras se acercan al Monte del Destino para destruir el Anillo Único.";
 
 } 
 
 void draw(){
   
   if (pantalla==0){
     image(mi_imagen0,0,0);
     fill(237,179,115);
     textAlign(LEFT);
     textFont(fuente, 15);
     text ("EL",118,52);
     text ("DE",278,73);
     text ("LOS",278,93);
     
     textFont(fuente, 100);
     text ("S",63,119);
     text ("A",301,119);
     text ("S",522,119);
     
     textFont(fuente, 50);
     text ("EÑOR",113,99);
     text ("NILLO",358,99);
     
     fill(255,0,0);    
     textFont(fuente, 30);
     text ("PLAY",280,400);
     image(mi_imagen4,280,350,80,80);
     
   }else if (pantalla==1){    
     image(mi_imagen1,0,0);     
     float tono = map(py, height, -200, 255, 0);
     textAlign(CENTER);
     textFont(fuente, 25);
     fill(255, 0, 0, tono);
     text (primerPeli,70,py,500,500);
     if (py<250) {
      py ++; 
     }
   }else if (pantalla==2){  
     image(mi_imagen2,0,0);
     fill(255,255,0);
     textAlign(CENTER);
     textFont(fuente, 25);
     text (segundaPeli,px,35,255,500);      
     if (px>50) {
     px --;
    }      
   }else if (pantalla==3){
     image(mi_imagen3,0,0);     
     float tono = map(py2, height, -200, 255, 0);
     textAlign(CENTER);
     textFont(fuente, 25);
     fill(255, 0, 0, tono);
     text (tercerPeli,70,py2,500,500);
     if (py2>-200) {
     py2 --;
    }  
   }  
   if (activo == true) {
    if (frameCount%60 == 0) {
      segundos++;
    }
   }

  
  if (segundos == 0){
     pantalla =0;
  }else if (segundos>0 && segundos<=13){
     pantalla =1;
  }else if (segundos> 13 && segundos<=25){
     pantalla =2;
  }else if (segundos> 25 && segundos<=37){
     pantalla =3;     
  }else if (segundos>=37){
     textFont(fuente, 15);
     fill(255,0,0);
     text ("REINICIAR",580,400);
     image(mi_imagen4,540,350,80,80);
  }  
 }
 
 void mousePressed (){
   float d1 = dist(mouseX,mouseY,320,390);
   float d2 = dist(mouseX,mouseY,580,390);
   int r1=65/2;
   
   if (pantalla==0){
     if(d1<r1){
     activo = true;
    }
   }
   
   if (pantalla==3){
     if(d2<r1){
     activo = false;
     segundos = 0;
     pantalla=0;
     py = -200;
     px = width;
     py2 = height;
    }
   } 
   
 }

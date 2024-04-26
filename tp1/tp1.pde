// Coronado Guillen Gustavo Eduardo, Comision 1
// tp1

PImage mi_imagen;

void setup (){
size (800,400);
background (54,56,69);
mi_imagen= loadImage ("pez1.jpg");
image (mi_imagen,0,0);


//fondo
noStroke();
fill (33,34,36);
quad(400,240,800,70,800,321,400,308);


//lineas
strokeWeight (9);
stroke (226,230,216);
line(555,294,555,0);

strokeWeight (16);
stroke (129,161,0);
line(432,308,488,118);
line(474,303,501,270);
line(431,307,400,226);
line(457,305,417,176);
line(467,270,400,222);


//cuerpo
noStroke();
fill (236,195,165);
ellipse (571,210,110,85);

fill (255,255,80);
ellipse (525,252,86,15);

fill (255,215,76);
triangle (480,250,521,193,571,252);

fill (255,255,230,130);
triangle (559,168,607,98,670,157);
triangle (582,245,639,213,674,245);
triangle (643,210,673,186,686,227);
quad(660,160,709,78,736,71,712,155);
quad(618,163,711,155,768,205,741,211);

fill (255);
ellipse (518,237,19,19);

fill (0);
ellipse (518,237,9,9);

fill (255,255,140,200);
triangle (663,157,687,114,684,170);
triangle (674,160,707,197,673,185);
triangle (641,208,662,194,672,221);
triangle (565,253,616,251,604,228);
triangle (559,170,599,103,591,150);
triangle (559,170,591,150,667,157);

fill (239,201,164);
quad(548,170,670,155,680,180,611,240);

fill (214,230,180,150);
triangle (521,192,673,186,570,252);

fill (255,255,200,200);
triangle (567,243,592,209,616,215);

fill (255,255,140,200);
triangle (603,231,675,184,611,240);


//suelo
fill (108,89,74);
rect (400,310,400,90);

fill (235,202,149,200);
triangle (400,310,648,286,800,323);
triangle (400,400,571,375,762,398);
}


void draw (){
println (mouseX, mouseY);
}

import ddf.minim.*;
import processing.video.*;
PImage lobinho, baner, ajuda, pedido, balaoD, tres, caverna;
PImage fechadalobo, floresta, boneco, caiut, abertalobo, correndo, amigos, teste;
PImage mao, aberta, caido, caiub, entregar, chocolate, morreu, caverna3, pmorto, floresta2, lobao, fechada; 
PImage gif[];
PImage gfi[];
int i = 0;
int a = 0;
int f;
int xpos12 = 200;
int numberOfFrames;
int frames;
int xcav = -200;
int svar = 1;
int xpos = -100;
int xpos2 = -200;
int xpos3 = 300;
int xpos112 = 500;
int xlobo = -500;
int ylobo = 200;

int contador = 0;
;
Minim minim;
AudioPlayer batida, vidro, lobo, correr, caindo, fundo;
Movie myMovie;


void setup() {
  size(700, 700, P2D);
  //gif
  numberOfFrames = 19;
  gif = new PImage[numberOfFrames];
  while(i < numberOfFrames){
    
    gif[i] = loadImage("frame_"+i+"_delay-0.2s.gif");
    i = i + 1;
  }
  
  frames = 47;
  gfi = new PImage[frames];
  while(a < frames){
    gfi[a] = loadImage("frame_"+a+"_delay-0.08s.gif");
    a = a+1;
  }
  
  //Imagens
  lobinho = loadImage("lobinho.png");
  fechadalobo = loadImage("fechadalobo.jpg");
  floresta = loadImage("floresta.png");
  boneco = loadImage("boneco_teste.png");
  caiut = loadImage("caiut.png");
  abertalobo = loadImage("abertalobo.jpg");
  correndo = loadImage("correndo.png");
  amigos = loadImage("amigos.png");
  baner = loadImage("baner.png");
  ajuda = loadImage("ajuda.png");
  pedido = loadImage("pedido.png");
  balaoD = loadImage("balaoE.png");
  tres = loadImage("tres.png");
  caverna = loadImage("CAVERNA.png");
  mao = loadImage("mao.png");
  aberta = loadImage("aberta.jpg");
  caido = loadImage("caido.png");
  caiub = loadImage("caiub.png");
  entregar = loadImage("entregar.png");
  chocolate = loadImage("chocolate.png");
  morreu = loadImage("morreu.png");
  caverna3 = loadImage("caverna.jpg");
  pmorto = loadImage("pmorto.png");
  floresta2 = loadImage("floresta2.jpg");
  lobao = loadImage("lobao.png");
  fechada = loadImage("fechada.jpg");
  teste = loadImage("teste.png");
  
  //Audio
  minim = new Minim(this);
  batida = minim.loadFile("porta.mp3");
  minim = new Minim(this);
  vidro = minim.loadFile("vidro.mp3");
  minim = new Minim(this);
  lobo = minim.loadFile("lobo.mp3");
  correr = minim.loadFile("correr2.mp3");
  caindo = minim.loadFile("caindo2.mp3");
  fundo = minim.loadFile("fundo.mp3");
  
  //video
  //myMovie = new Movie(this, "transit.mov");
  //myMovie.loop();
  background(0);
}

void draw() {
  fundo.play();
  if (svar == 1) inicio();
  if (svar == 2) cap1();
  if (svar == 3) cap2();
  if (svar == 4) cap3();
  if (svar == 5) cap4();
  if (svar == 11) cap11();
  if (svar == 111) cap111();
  if (svar == 112) cap112();
  if (svar == 12) cap12();
  if (svar == 121) cap121();
  if (svar == 122) cap122();
  if (svar == 6) cena2();
  if (svar == 31) cap31();
  if (svar == 32) cap32();
  
}

void inicio(){
  textSize(50);
  //texto cabeçalho
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("No ano de 2020 4 amigos estavam numa lareira no meio da floresta.", 10, 20 );//cabeçalho texto
  fill(0); rect(0, 100, 700, 600);
  text("Derrepente um lobo entra na casa O que os jovens iram fazer?",10, 34 );
  text("A. Eles correm", 10 , 55);
  text("B. Eles lutam", 10 , 68);
  text("C. 2 correm e 2 lutam", 10 , 82);
  text("D. Eles impedem o lobo de entrar", 10 , 95);
  //Animação/personagem
  image(fechadalobo, 0, 100);
  //caixas de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 175,50); fill(0);textSize(20); text("A", 77.5, 685 ); //caixa de resposta
  fill(255); rect(175,650, 175,50); fill(0);textSize(20); text("B", 262.5, 685 ); //caixa de resposta
  fill(255); rect(350,650, 175,50); fill(0);textSize(20); text("C", 430.5, 685 ); //caixa de resposta
  fill(255); rect(525,650, 175,50); fill(0);textSize(20); text("D", 605.5, 685 ); //caixa de resposta
  
  //if para trocar de tela
  if(mousePressed) {
    if((mouseX>0) && (mouseY>650) && (mouseX<175) && (mouseY<700)) svar=2;
    if((mouseX>175) && (mouseY>650) && (mouseX<350) && (mouseY<700)) svar=3;
    if((mouseX>350) && (mouseY>650) && (mouseX<525) && (mouseY<700)) svar=4;
    if((mouseX>525) && (mouseY>650) && (mouseX<700) && (mouseY<700)) svar=5;
  }
}

//Grupo 5

void cap3(){
  
    //apagar tela
    fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("Pedro e Pietra fogem pela janela, enquanto Thales e Bryan, como guerriros, tentam impedir a entrada",10, 20);
    fill(0); rect(0, 100, 700, 600);
    text("do lobo. Mas enquanto seguram a porta, o lobo acaba dando uma cabeçada na porta derrubando",10, 34);
    text("os nossos guerreiros.", 10, 48);
    text("--------------------------------------------------------------------------------------", 10,60);
    text("*CLIQUE NA SETA PARA PROSSEGUIR*",440,90);
    fill(0); rect(0, 100, 700, 600);
    image(fechada,0,100);
    image(mao,500,280);
    image(mao,580,280);
    image(teste,xpos3,400);
    image(teste, xpos3, 300);
    

    

      
    //corrida 
   if(xpos3 < -100){
      contador = contador +1;
     }
    if(contador < 4){
      xpos3 = xpos3 -5;
    //depois da corrida  
    }
   //texto cabeçalho
    //animação

    fill(255); rect(0, 600, 700,50); //Linha branca
    fill(255); rect(625,450, 650,50);fill(0);textSize(20); text("--->",640,480);
    //caixa de resposta
    fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
    fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //ifs para trocar de tela
    if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
    if((mouseX>625) && (mouseY>450) && (mouseX<700) && (mouseY<500)) svar=6; 
       
  }
}

void cena2(){
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("",10, 20);
  text("O que Thales e Bryan vão fazer?",10,20); 
  text("-------------------", 10,40);
  text("A.Thales encontra uma bolsa com chocolate e da para o lobo, que em seguida morre de intoxicação", 10,55);
  text("B.Thales e Bryan chutam o fucinho do lobo, fazendo com que ele corra para a floresta e encontre", 10,75);
  text("Pedro e Pietra escondidos, e os devora",10,92);
  text("-------------------", 10,105);
  fill(0); rect(0, 100, 700, 600);
  image(aberta,0,100);
  image(caido,580,430);
  image(caiub,565,380);
//texto cabeçalho
    
//animação

//caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em uma das opções", 77.5, 685 );
  fill(255); rect(150,600, 150,50); fill(0);textSize(20); text("A", 225, 630 );
  fill(255); rect(400,600, 150,50); fill(0);textSize(20); text("B", 465, 630 );
//if para trocar de tela
  if(mousePressed){
    if((mouseX>150) && (mouseY>600) && (mouseX<300) && (mouseY<650)) svar=31;
    if((mouseX>400) && (mouseY>600) && (mouseX<550) && (mouseY<650)) svar=32;
  }
}
void cap31(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); 
  text("-------------------", 10,20);
  text("Thales deu o chocolate para o lobo, que morreu de intoxicação", 10,60);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600);
  image(fechada,0,100);
  image(entregar,30,330);
  image(chocolate,142,384);
  image(morreu,100,400);
  image(caido,580,430);
  //corrida 
 

  // DEIXA PRETO
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}
void cap32(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); 
  text("-------------------", 10,20);
  text("O lobo, muito irritado, correu para a floresta e devorou Pedro e Pietra", 10,60);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600); // DEIXA PRETO
   image(floresta, 0, 100);
   image(lobinho, xpos, 200);
    
    //corrida
    if(xpos > width && contador < 5){
      xpos = -100;
      contador = contador +1;
     }
    if(contador < 1){
      xpos = xpos + 10;
    //depois da corrida  
    }else{
      image(floresta2, 0, 100);
      image(lobao,100,400);
      image(pmorto,450,460);
      image(pmorto,280,450);
      
    }
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}

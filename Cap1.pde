void cap1(){
    //apagar tela
    fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("Eles pulam a janela e correm sem parar, mas durante a corrida o pedrinho acaba atropechando,",10, 20);
    text("e fala para os seus colegas irem pq o pedrinho vai ser o sacrificado, os amigos vão fazer oq?", 10,40);
    text("A - Eles ajudam o pedro", 10,60);
    text("B - Os amigos do pedro abandonam ele.", 10,80);
    
    fill(0); rect(0, 100, 700, 600);
    //texto cabeçalho
    
    //animação
    image(floresta, 0, 100);
    image(boneco, xpos, 200);
    vidro.play();
    
    //corrida
    if(xpos > width && contador < 5){
      xpos = -100;
      contador = contador +1;
      correr.play();
     }
    if(contador < 4){
      xpos = xpos + 10;
    //depois da corrida  
    }else{
      image(floresta, 0, 100);
      image(caiut, 100, 200);
      image(lobinho, 0, 200);
      caindo.play();
      lobo.play();
    }
    
    
    //caixa de resposta
    fill(255); rect(0, 600, 700,50); //Linha branca
    fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em uma das opções", 77.5, 685 );
    fill(255); rect(0,600, 150,50); fill(0);textSize(20); text("A", 75, 630 );
    fill(255); rect(550,600, 150,50); fill(0);textSize(20); text("B", 625, 630 );
    //if para trocar de tela
    if(mousePressed){
      if((mouseX>0) && (mouseY>600) && (mouseX<150) && (mouseY<650)) svar=11;
      if((mouseX>550) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=12;
  }    
}

void cap11(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("ELES AJUDARAM NOSSO AMIGO PEDRO, QUAL DAS OPÇÕES VOCÊ QUER Q ACONTEÇA",10, 20);
  text("-------------------", 10,40);
  text("A - O lobo se aproxima e todos encaram ele.", 10,60);
  text("B - Eles levantam o Pedro", 10,80);
  text("-------------------", 10,100);
    
  fill(0); rect(0, 100, 700, 600);

//animação
  image(amigos, 0, 100);
  image(baner, xpos2, 50);
  if (xpos2 > width){
    xpos2 = -100;
  }
  xpos2 = xpos2 + 2;
  
  
//caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em uma das opções", 77.5, 685 );
  fill(255); rect(150,600, 150,50); fill(0);textSize(20); text("A", 225, 630 );
  fill(255); rect(400,600, 150,50); fill(0);textSize(20); text("B", 475, 630 );
//if para trocar de tela
  if(mousePressed){
    if((mouseX>150) && (mouseY>600) && (mouseX<300) && (mouseY<650)) svar=111;
    if((mouseX>400) && (mouseY>600) && (mouseX<550) && (mouseY<650)) svar=112;
  }

}
void cap111(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("NOSSOS AMIGOS SE TORNARAM AMIGO DO LOBO E AO LONGO DOS ANOS ELES ",10, 20);
  text("APRENDERAM A DOMESTICÁ LOS, E ATÉ HOJE CUIDAM DE LOBOS SELVAGENS", 10,40);
  text("A GERAÇÕES", 10,60);
  text(" FIM ", 10,80);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600); // DEIXA PRETO
  
  image(gif[f], 0, 100, width, height);
  f = f +1;
  if (f == numberOfFrames) f = 0;
    
  
  
  
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história e escolher outra opção", 30, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}

void cap112(){
  //apagar tela e escrever no cabeçalho
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("NOSSOS AMIGOS NÃO CONSEGUEM SALVAR O PEDRO, PORQUE O",10, 20);
  text("PEDRO DEMORA MUITO PARA SE LEVANTAR", 10,40);
  text("", 10,60);
  text("", 10,80);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600); // DEIXA PRETO
  
  //ANIMAÇÃO
  image(floresta, 0, 100);
  //image(caiut, 50, 200);
  image(lobinho, xlobo, ylobo);
  image(ajuda, xpos112, 200);
  image(pedido, 50, 200);
  
  if (xpos112 > 200){
    
    xpos112 = xpos112 - 10;
  }
  if (xpos112 == 200){
    image(balaoD, 100, 100);
    fill(0); textSize(24);text("Vem Pedro!!!", 450, 250);
    if(xlobo < -100 ) xlobo = xlobo + 5;
    
  }
  if(xlobo == -100){
    image(balaoD, -100, 100);
    fill(0); textSize(24);text("Ele já chegou", 250, 250);
    fill(0); textSize(24);text("perto", 250, 300);
  }  
  
  if(xlobo == -100){
    image(balaoD, 100, 100);
    fill(0); textSize(24);text("NAAAAAOOO", 450, 275);
  }  
  //FIM DA ANIMAÇÃO
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}

void cap12(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("Os amigos abandonaram o Pedro e ele infelizmente está na beira da morte,",10, 20);
  text("o que vai ocorrer em seguida:", 10,40);
  text("A - Eles vão atras de um abrigo e se protegem", 10,60);
  text("B - Eles bolam um plano para espantar o lobo.", 10,80);
  text("-------------------", 10,100);
    
  fill(0); rect(0, 100, 700, 600);
//texto cabeçalho
    
//animação
  image(floresta, 0, 100);
  image(caiut, -100, 200);
  image(lobinho, -200, 200);
  image(tres, xpos12, 200);
  
  if (xpos12 < 600){
    xpos12 = xpos12 + 2;
    
  }
  if (xpos12 == 600){
    image(balaoD, 100, 100);
    fill(0); textSize(24);text("NAAAAAOOO", 450, 275);
  }

//caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em uma das opções", 77.5, 685 );
  fill(255); rect(150,600, 150,50); fill(0);textSize(20); text("A", 225, 630 );
  fill(255); rect(400,600, 150,50); fill(0);textSize(20); text("B", 475, 630 );
//if para trocar de tela
  if(mousePressed){
    if((mouseX>150) && (mouseY>600) && (mouseX<300) && (mouseY<650)) svar=121;
    if((mouseX>400) && (mouseY>600) && (mouseX<550) && (mouseY<650)) svar=122;
  }

}

void cap121(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("INFELIZMENTE SEM O PEDRO ELES CONSEGUEM UM ABRIGO NA ",10, 20);
  text("CAVERNA", 10,40);
  text("PARTE FINAL 121", 10,60);
  text("PARTE FINAL 121", 10,80);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600); // DEIXA PRETO
  
  //Animação
  image(caverna, 0, 100);
  image(boneco, xcav, 300);
  image(boneco, xcav, 400);
  image(boneco, xcav, 200);
  
  if(xcav > width){
    image(balaoD, 100, 100);
    fill(0); textSize(24);text("desculpe", 450, 275);
  }
  xcav = xcav + 3;
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}

void cap122(){
  //apagar tela
  fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("NOSSOS AMIGOS REPARAM QUE O LOBO ESTAVA COM UMA ARMADILHA,",10, 20);
  text("TODOS RESOLVEM SOLTA-LO, QUE POR SORTE NÃO ACABA FERINDO NENHUM DELES.", 10,40);
  text("ELES UTILIZAM UM PEDAÇO DE MADEIRA PARA O LOBO NÃO ATACAR E ASSIM CONSEGUIR RETIRAR", 10,60);
  text("ARMADILHA.", 10,80);
  text("-------------------", 10,100);
  fill(0); rect(0, 100, 700, 600); // DEIXA PRETO
  
  //Animação
  image(gfi[f], 0, 100, width, height);
  f = f +1;
  if (f == frames) f = 0;
  
      //caixa de resposta
  fill(255); rect(0, 600, 700,50);
  fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
  fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}

//Pedro$_System_$

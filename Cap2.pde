void cap2(){
    //apagar tela
    fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("cap2",10, 20);
    fill(0); rect(0, 100, 700, 600);
    //texto cabeçalho
    
    //animação
    
    //caixa de resposta
    fill(255); rect(0, 600, 700,50);
    fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
    fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
    if(mousePressed){
      if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
}
//Pedro colocou para poder voltar para a tela de inicio.

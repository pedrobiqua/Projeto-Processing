void cap4(){
    //apagar tela
    fill(255); rect(0, 0, 700, 100);fill(0);textSize(14); text("Os quatro correm em direcao a porta com cadeiras e moveis para trancar e evitar a entrada do lobo.",10, 20);
    fill(0); rect(0, 100, 700, 600);
    //texto cabeçalho
    
    //animação
    image(abertalobo, 0, 100);
    image(correndo, xpos, 300);
    if(xpos>500){ 
      image(fechadalobo, 0, 100); 
      image(correndo, 500, 300);
      batida.play();

}
    xpos = xpos + 5;
      

    //caixa de resposta
    fill(255); rect(0, 600, 700,50);
    fill(255); rect(0,650, 700,50); fill(0);textSize(20); text("Clique em voltar para ir ao inicio da história", 77.5, 685 );
    fill(255); rect(500,600, 650,50); fill(0);textSize(20); text("INÍCIO", 550, 630 );
    //if para trocar de tela
  if(mousePressed){
    if((mouseX>500) && (mouseY>600) && (mouseX<700) && (mouseY<650)) svar=1;
  }
  
  
  
  
  
}
//Thales

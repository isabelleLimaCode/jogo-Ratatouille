PImage fundo;
PImage queijo;
PImage morango;
PImage lasanha;
PImage tomate;
PImage boneco;
PImage molho;
PImage veneno;
PImage ratoeira;
PImage pao;
PImage salada;
PImage maracao;
PImage batata;
PImage prato;
PImage fundo2;
PImage coracao;
PImage fundo3;
PImage fundo4;
PImage fundo5;
PImage fundo6;
PImage bomba ;

boolean qe, ma, mo, la, bi, mol, ve, rat, pa, sa, mar, co, pp, bom;
boolean c1, c2, c3, menu=true ;
boolean m=true, c=false, o=false, j=false, ga=false, wi=false;

int xqe, yqe, vyqe;
int larg, alt;
int lar, altt;
int ll, at;
int xma, yma, vyma;
int xmo, ymo, vymo;
int xla, yla, vyla;
int xbi, ybi, vybi;
int xmol, ymol, vymol;
int xve, yve, vyve;
int xrat, yrat, vyrat;
int xpa, ypa, vypa;
int xsa, ysa, vysa;
int xmar, ymar, vymar;
int xco, yco, vyco;
int xpp, ypp, vypp;
int xboneco, yboneco;
int xbom, ybom, vybom ;
int nvidas=3;
int pontos=0;

PFont letra, letra_menu;

void setup()
{
  size(1000, 650);
  fundo=loadImage("fundo4.jpg");
  queijo=loadImage("Queijo.png");
  veneno=loadImage("veneno 3.png");
  morango=loadImage("morango2.png");
  lasanha=loadImage("lasanha.png");
  tomate=loadImage("tomate2.png");
  boneco=loadImage("rato.png");
  molho=loadImage("molho5.png");
  ratoeira=loadImage("ratoeira.png");
  pao=loadImage("pao5.png");
  salada=loadImage("salada.png");
  maracao=loadImage("macarao2.png");
  batata=loadImage("batata.png");
  prato=loadImage("hamburg.png");
  fundo2=loadImage("fundo2.jpg");
  coracao=loadImage("coracao.png");
  fundo3=loadImage("capa3.jpg");
  fundo4=loadImage("FOTOO.jpg");
  fundo5=loadImage("capa2.jpg");
  fundo6=loadImage("capa.jpg");
  bomba=loadImage("bomba.png");

  letra=loadFont("HYSWLongFangSong-200.vlw");
  letra_menu=loadFont("GillSans-UltraBoldCondensed-48.vlw");


  qe=ma=mo=la=bi=mo=mol=pa=sa=mar=co=pa=true;

  xboneco=500;
  yboneco=550;

  //atribuição das medidas 
  larg=80;
  alt=70;
  //atribuição das medidas do veneno
  lar=50;
  altt=90;
  // atribuição das medidas da ratoeira 
  ll=60;
  at=100;

  //atributo de valores as variaveis da melancia
  xqe=100;
  yqe=-20;
  vyqe=(int)random(1, 3);


  //atribuição de valores as variáveis da mala
  xma=300;
  yma=-10;
  vyma=(int)random(3, 5);

  //atribuição de valores as variaveis da morango
  xmo=380;
  ymo=-30;
  vymo=(int)random(2, 3);
  //atribuição de valores as variaveis da lasanha
  xla=580;
  yla=-40;
  vyla=(int)random(4, 5);
//atribuição da varivel do biscoito
  xbi=650;
  ybi=-40;
  vybi=(int)random(3, 5);
  //atribuição de valores as variaveis do molho 
  xmol=700;
  ymol=-40;
  vymol=(int)random(3, 7);
  //atribuição de valores as variaveis do veneno
  xve=500;
  yve=-60;
  vyve=(int)random(2, 6);
  //atribuição de valores as variaveis da ratoeira 
  xrat=800;
  yrat=-70;
  vyrat=(int)random(3, 4);
  //atribuição de valores do pão 
  xpa=600;
  ypa=-50;
  vypa=(int)random(2, 5);
  //atribuiçaõ de valores do salada
  xsa=300;
  ysa=-70;
  vysa=(int)random(4, 6);
  // atribuiçaõ das medidas do macarão
  xmar=300;
  ymar=-70;
  vymar=(int)random(2, 6);
  // atribuição das medidas do bomba 
  xco=400;
  yco=-80;
  vyco=(int)random(3, 4);
  // atribuição do prato
  xpa=530;
  ypa=-70;
  vypa=(int)random(2, 4);
  //atribuição da bomba
  xbom=600;
  ybom=-90;
  vybom=(int)random(3, 6);
}

void draw()
{

  if (m==true) {
    menu();

    if (key=='p' || key=='P')
    {
      j=true;
      m=false;
    }

    if (key=='o' || key=='O')
    {
      o=true;
      m=false;
    }

    if (key=='c' || key=='C')
    {
      c=true;
      m=false;
    }

    if (key=='n'|| key=='N')
      exit();
  } else if (j==true) {
    image(fundo, 0, 0, 1000, 650);

    fruta();
    recomeca();
    objetos();
    boneco();
    deteta_comida();
    coracoes();
    vidas();
    deteta_venenos();
  } else if (c==true) {
    creditos();

    if (key=='v' || key=='V')
    {
      m=true;
      o=false;
    }
  } else if (o==true) {
    opcoes();

    if (key=='v' || key=='V')
    {
      m=true;
      o=false;
    }
  }

  if (ga==true)
  {
    j=false;
    gameover();

    
  }
  if(wi==true)
  {
    win();
    if(key=='r' || key=='R'){
    m=true;
    }
  }
}


void creditos() {
  image(fundo4, 0, 0, 1000, 650);
  textFont(letra, 50);
  text("Direcao :isabelle lima", 330, 210);
  text("Imagens: Google ", 330, 250);
  text("Ajuda: Angela antunes ", 330, 300);
}


void opcoes() {
  image(fundo6, 0, 0, 1000, 650);
  fill(#08090D);
  textFont(letra, 60);
  text("instruoes", 80, 110 );
  text("O objetivo do jogo-apanha as fruntas ", 20, 160);
  text(" e conseguir se desviar das bombas", 20, 205);
  text("Usa-se as setas para movimenta o Ratattuile", 20, 250);
}
void fruta()
{

  if (qe==true) {
    image(queijo, xqe, yqe, larg, alt);
    yqe+=vyqe;
  }
  if (mo==true) {
    image(morango, xmo, ymo, larg, alt);
    ymo+=vymo;
  }
  if (la==true) {
    image(lasanha, xla, yla, larg, alt);
    yla+=vyla;
  }
  if (bi==true) {
    image(tomate, xbi, ybi, larg, alt);
    ybi+=vybi;
  }
  if (mol==true) {
    image(molho, xmol, ymol, larg, alt);
    ymol+=vymol;
  }
  if (pa==true) {
    image(pao, xpa, ypa, larg, alt);
    ypa+=vypa;
  }
  if (sa==true) {
    image(salada, xsa, ysa, larg, alt);
    ysa+=vysa;
  }
  if (mar==true) {
    image(maracao, xmar, ymar, larg, alt);
    ymar+=vymar;
  }
  if (co==true) {
    image(batata, xco, yco, larg, alt);
    yco+=vyco;
  }
  if (pa==true) {
    image(prato, xpp, ypp, larg, alt);
    ypp+=vypp;
  }
}


void objetos()
{
  if (ve==true) {
    image(veneno, xve, yve, ll, at);
    yve+=vyve;
  }
  if (rat==true) {
    image(ratoeira, xrat, yrat, ll, at);
    yrat+=vyrat;
  }
  if (bom==true) {
    image(bomba, xbom, ybom, lar, altt);
    ybom+=vybom;
  }
}

void recomeca()
{
  if ((qe==false) || (yqe>=650))
  {
    qe=true;
    yqe=-20;
    xqe=(int)random(0, 950);
    vyqe=(int)random(1, 3);
  }
  if ((ve==false)|| (yve>=700))
  {
    ve=true;
    yve=-30;
    xve=(int)random(0, 800);
    vyve=(int)random(2, 5);
  }
  if ((mo==false) ||(ymo>=800))
  {
    mo=true;
    ymo=-30;
    xmo=(int)random(0, 850);
  }
  if ((la==false)|| (yla>=600))
  {
    la=true;
    yla=-20;
    xla=(int)random(0, 600);
  }
  if ((bi==false)||(ybi>=700))
  {
    bi=true;
    ybi=-10;
    xbi=(int)random(0, 700);
  }
  if ((mol==false)||(ymol>=650))
  {
    mol=true;
    ymol=-30;
    xmol=(int)random(0, 650);
  }
  if ((rat==false)||(yrat>=640))
  {
    rat=true;
    yrat=-40;
    xrat=(int)random(0, 690);
  }
  if ((pa==false)||(ypa>=700))
  {
    pa=true;
    ypa=-50;
    xpa=(int)random(0, 700);
  }
  if ((sa==false)||(ysa>=800))
  {
    sa=true;
    ysa=-60;
    xsa=(int)random(0, 800);
  }
  if ((mar==false)||(ymar>=650))
  {
    mar=true;
    ymar=-60;
    xmar=(int)random(0, 650);
  }
  if ((co==false)||(yco>=980))
  {
    co=true;
    yco=-70;
    xco=(int)random(0, 900);
  }
  if ((pp==false)||(ypp>=850))
  {
    pp=true;
    ypp=-70;
    xpp=(int)random(0, 850);
  }
  if ((bom==false)||(ybom>=940))
  {
    bom=true;
    ybom=-60;
    xbom=(int)random(0, 890);
  }
}


void boneco()
{
  image(boneco, xboneco, yboneco, 150, 100);
}


void keyPressed()
{
  if (keyCode==LEFT)
    xboneco-=10;
  if (keyCode==RIGHT)
    xboneco+=10;
}

void deteta_comida()
{
  if (xboneco+150>=xqe && xboneco<=xqe+80 && yboneco+100>=yqe && yboneco<=yqe+70 && qe)
  {
    qe=false;
    pontos+=10;
  }

  if (xboneco+150>=xma && xboneco<=xma+80 && yboneco+100>=yma && yboneco<=yma+70 && ma)
  {
    ma=false;
    pontos+=10;
  }
  if (xboneco+150>=xmo && xboneco<=xmo+80 && yboneco+100>=ymo && yboneco<=ymo+70 && mo)
  {
    mo=false;
    pontos+=10;
  }
  if (xboneco+150>=xla && xboneco<=xla+80 && yboneco+100>=yla && yboneco<=yla+70 && la)
  {
    la=false;
    pontos+=10;
  }
  if (xboneco+150>=xbi && xboneco<=xbi+80 && yboneco+100>=ybi && yboneco<=ybi+70 && bi)
  {
    bi=false;
    pontos+=10;
  }
  if (xboneco+150>=xmol && xboneco<=xmol+80 && yboneco+100>=ymol && yboneco<=ymol+70 && mol)
  {
    mol=false;
    pontos+=10;
  }

  if (xboneco+150>=xpa && xboneco<=xpa+80 && yboneco+100>=ypa && yboneco<=ypa+70 && pa)
  {
    pa=false;
    pontos+=10;
  }
  if (xboneco+150>=xsa && xboneco<=xsa+80 && yboneco+100>=ysa && yboneco<=ysa+70 && sa)
  {
    sa=false;
    pontos+=10;
  }
  if (xboneco+150>=xmar && xboneco<=xmar+80 && yboneco+100>=ymar && yboneco<=ymar+70 && mar)
  {
    mar=false;
    pontos+=10;
  }
  if (xboneco+150>=xco && xboneco<=xco+80 && yboneco+100>=xco && yboneco<=yco+70 && co)
  {
    co=false;
    pontos+=10;
  }
  if (xboneco+150>=xpp && xboneco<=xpp+80 && yboneco+100>=xpp && yboneco<=ypp+70 && pp)
  {
    pa=false;
    pontos+=10;
  }
}

void deteta_venenos()
{
  if (xboneco+150>=xve && xboneco<=xve+80 && yboneco+100>=yve && yboneco<=yve+70 && ve)
  {
    ve=false;
    nvidas--;
  }
  if (xboneco+150>=xrat && xboneco<=xrat+80 && yboneco+100>=yrat && yboneco<=yrat+70 && rat)
  {
    rat=false;
    nvidas--;
  }
  if (xboneco+150>=xbom && xboneco<=xbom+80 && yboneco+100>=ybom && yboneco<=ybom+70 && bom)
  {
    bom=false;
    nvidas--;
  }
}
void coracoes() {
  if (c1==true)
    image(coracao, 650, 0, 75, 75);
  if (c2==true)
    image(coracao, 725, 0, 75, 75);
  if (c3==true)
    image(coracao, 800, 0, 75, 75);
}
void vidas ()
{
  if (nvidas==3)
    c1=true;
  else if (nvidas<3)
    c1=false;

  if (nvidas>=2)
    c2=true;
  else if (nvidas<2)
    c2=false;

  if (nvidas>=1)
    c3=true;
  else if (nvidas<1)
    c3=false;



  textFont(letra, 50);
 // text("vidas:"+nvidas, 650, 50);

  text("Pontos:"+pontos, 50, 50);



  if (nvidas<=0)
  {
    ga=true;
  }
  if (pontos>=200)
  {
    wi=true;
  }
}

void win() {
  image(fundo2, 0, 0, 1000, 650 );
  textFont(letra, 200);
  text("Winner", 200, 400);
  fill(0);
  textFont(letra ,40);
  text("volta menu(R)",700 ,650);
  if (key=='r' || key=='R' && ga==true){
      m=true;
      wi=false;
    }
  }
void gameover() {
  image(fundo5, 0, 0, 1000, 650);
  textFont(letra, 200);
  text("Gameover", 200, 400);
  fill(0);
  textFont(letra,60);
  text("volta menu (R)",700,650);
  if (key=='r' || key=='R' && ga==true){
      m=true;
      ga=false;
    }
  nvidas=3;
  pontos=0;

}
void menu()
{
  textFont(letra_menu, 48);
  fill(#FFFFFF);
  image(fundo3, 0, 0, 1000, 650 );
  text("PLAY(P) ", 20, 420);
  text("Opcoes(O)", 20, 470);
  text("Creditos(C)", 20, 520);
  text("Exit(v)", 20, 570);
}          


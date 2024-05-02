programa {

  inclua biblioteca Util --> u
  
  inteiro torfin_dano
  inteiro torfin_vida
  inteiro gislaine_dano
  inteiro gislaine_vida
  inteiro rudeus_dano
  inteiro rudeus_vida
  inteiro goblin_vida
  inteiro goblin_dano

  funcao inicio() 
  {
    torfin_dano = 2200
    torfin_vida = 5000
    gislaine_dano = 2500
    gislaine_vida = 2000
    rudeus_dano = 2800
    rudeus_vida = 3500
    goblin_vida = 10000
    goblin_dano = 3000
    escreva(".========================================================================================.\n")
    escreva("|                                      A SAGA                                            |\n")
    escreva("'========================================================================================'\n\n")
    escreva("E então 3 cavaleiros foram expedidos para uma missão de resgate da princesa, filha do rei.\n")
    u.aguarde(4000)
    limpa()
    escreva("\n         />_________________________________ \n")
    escreva("[########[]_________________________________> \n")
    escreva("         />                                   \n\n")
    escreva("Os cavaleiros Rudeus (LIDER), Gislaine e Torfin brandaram suas espadas e partiram para valhala onde Sophia a princesa está mantida presa em um castelo.")
    u.aguarde(6000)
    limpa()
    escreva("\n                   ,%%%,\n")
    escreva("                 ,%%%` % \n")
    escreva("                ,%%`( '| \n")
    escreva("               ,%%@ /|_/\n")
    escreva("     ,%.-'''--%%% '@@__  \n")
    escreva("    %%/             |__`/\n")
    escreva("   .%'|     |   |   /  //\n")
    escreva("   ,%' >   .'----| |  [/ \n")
    escreva("      < <<`       ||     \n")
    escreva("       `|||       ||     \n")
    escreva("         )||      )|     \n")
    escreva(" ^^^^^^^^'''^^^^^^''^^^^^\n")
    escreva("Em seus cavalos galopando encontram um obstáculo no meio do percurso, 1 goblin de 10.000 de vida e 3000 de dano.")
    u.aguarde(6000)
    limpa()
    escreva("UMA BATALHA SE INICIA")
    u.aguarde(500)
    limpa()
    escreva("UmA BaTAlha sE IniCIA")
    u.aguarde(500)
    limpa()
    escreva("UMA BATALHA SE INICIA")
    u.aguarde(500)
    limpa()
    escreva("UmA BaTAlha sE IniCIA")
    u.aguarde(500)
    limpa()
    escreva("UMA BATALHA SE INICIA")
    u.aguarde(500)
    limpa()
    escreva("UmA BaTAlha sE IniCIA")
    u.aguarde(500)
    limpa()
    escreva("UMA BATALHA SE INICIA")
    u.aguarde(500)
    limpa()
    escreva("UmA BaTAlha sE IniCIA")
    u.aguarde(500)
    limpa()
    escreva(".======================================================================.\n")
    escreva("|                Torfin            Gislaine            Rudeus          |\n")
    escreva("| VIDA           ", torfin_vida, "              ", gislaine_vida,"                  ", rudeus_vida,"          |\n")
    escreva("| DANO REAL      ", torfin_dano, "              ", gislaine_dano,"                  ", rudeus_dano,"          |\n")
    escreva("|======================================================================|\n")
    escreva("| GOBLIN VIDA: -------------------------------------------------- 10000|\n")
    escreva("'======================================================================'\n")
    u.aguarde(3000)
    limpa()
    batalha()
  }

  funcao batalha() 
  {
    inteiro atacante
    inteiro valor_dado
    inteiro rodadas
    inteiro enter
    rodadas = 10
    enquanto (rodadas > 0 e goblin_vida > 0 e rudeus_vida > 0)
    {
    	 escreva("Você tem: ",rodadas," rodadas para vencer o Goblin!")
    	 u.aguarde(750)
    	 limpa()
    	 escreva("Você tem: ",rodadas," rodadas para vencer o gObLiN!")
    	 u.aguarde(750)
    	 limpa()
    	 escreva("Você tem: ",rodadas," rodadas para vencer o Goblin!")
    	 u.aguarde(750)
    	 limpa()
    	 escreva("Você tem: ",rodadas," rodadas para vencer o gObLiN!")
    	 u.aguarde(750)
    	 limpa()
    	 escreva("Você tem: ",rodadas," rodadas para vencer o Goblin!")
    	 u.aguarde(750)
    	 limpa()
    	 atacante = quem_bate()
      escolha (atacante)
      {
        caso 1:
        	se (torfin_vida > 0)
        	{
		   valor_dado = u.sorteia(1, 7)
		   escreva("Gire o dado\n\n\n\n\n\n\n")
		   escreva("Digite 1: ")
		   leia(enter)
		   limpa()
	        atacante = torfin_dano / valor_dado
	        goblin_vida = goblin_vida - atacante
	        escreva("O dano real do Torfin foi: ", atacante,"\n")
	        u.aguarde(3000)
	        limpa()
        	}
        	senao
        	{
        		torfin_vida = 0
        		atacante = 0
        		escreva("Nunca vi morto atacar!")
        		u.aguarde(3000)
        		limpa()
        	}
          escreva(".======================================================================.\n")
          escreva("|                Torfin            Gislaine            Rudeus\n")
          escreva("| VIDA           ", torfin_vida, "              ", gislaine_vida,"                  ", rudeus_vida,"\n")
          escreva("| DANO REAL      ",  atacante, "\n")
          escreva("|======================================================================|\n")
          escreva("| GOBLIN VIDA: --------------------------------------------------- ",goblin_vida,"\n")
    		escreva("'======================================================================'\n")
          u.aguarde(3000)
          limpa()
          se (goblin_vida > 0)
          {
          	dano_goblin(1)
          }
          rodadas--
        pare

        caso 2:
	     se (gislaine_vida > 0)
	     {
		   valor_dado = u.sorteia(1, 7)
		   escreva("Gire o dado\n\n\n\n\n\n\n")
		   escreva("Digite 1: ")
		   leia(enter)
		   limpa()
	        atacante = gislaine_dano / valor_dado
	        goblin_vida = goblin_vida - atacante
	        escreva("O dano real da Gislaine foi: ", atacante,"\n")
	        u.aguarde(3000)
	        limpa()
	     }
	     senao
	     {
	        gislaine_vida = 0
	        atacante = 0
	        escreva("Nunca vi morto atacar!")
             u.aguarde(3000)
        	   limpa()
	     }
          escreva(".======================================================================.\n")
          escreva("|                Torfin            Gislaine            Rudeus\n")
          escreva("| VIDA           ", torfin_vida, "              ", gislaine_vida,"                  ", rudeus_vida,"\n")
          escreva("| DANO REAL                         ",  atacante, "\n")
          escreva("|======================================================================|\n")
          escreva("| GOBLIN VIDA: --------------------------------------------------- ",goblin_vida,"\n")
    		escreva("'======================================================================'\n")
          u.aguarde(3000)
          limpa()
          se (goblin_vida > 0)
          {
          	dano_goblin(2)
          }
          rodadas--
        pare

        caso 3:
          se (rudeus_vida > 0)
          {
	    	   valor_dado = u.sorteia(1, 7)
	        escreva("Gire o dado\n\n\n\n\n\n\n")
	        escreva("Digite 1: ")
	        leia(enter)
	        limpa()
	        atacante = rudeus_dano / valor_dado
	        goblin_vida = goblin_vida - atacante
	        escreva("O dano real do Rudeus foi: ", atacante,"\n")
	        u.aguarde(3000)
	        limpa()
          }
          senao
          {
             rudeus_vida = 0
        	   atacante = 0
        	   escreva("Nunca vi morto atacar!")
        	   u.aguarde(3000)
        	   limpa()
          }
          escreva(".======================================================================.\n")
          escreva("|                Torfin            Gislaine            Rudeus\n")
          escreva("| VIDA           ", torfin_vida, "              ", gislaine_vida,"                ", rudeus_vida,"\n")
          escreva("| DANO REAL                                            ",atacante,"\n")
          escreva("|======================================================================|\n")
          escreva("| GOBLIN VIDA: --------------------------------------------------- ",goblin_vida,"\n")
    		escreva("'======================================================================'\n")
          u.aguarde(3000)
          limpa()
          se (goblin_vida > 0)
          {
          	dano_goblin(3)
          }
          rodadas--
        pare
        caso atacante:
	     escreva("O Goblin observa que você não atacontou e lança seu ultimato e vocês desfalecem")
	     escreva("\n    (        \n")
	     escreva("     /       \n")
	     escreva("     )      \n")
	     escreva("##--------> \n")
	     escreva("     )      \n")
	     escreva("    /       \n")
	     escreva("   (        \n")
	     gislaine_vida = 0
	     rudeus_vida = 0
	     torfin_vida = 0
	     u.aguarde(6000)
	     limpa()
	     rodadas = rodadas - 11
        pare

      }
    }
    se (goblin_vida <= 0)
    {
      	escreva("Os cavaleiro conseguiram passar pelo goblin e continuaram seu trageto e chegar ao seu destino.\n")
      	u.aguarde(2500)
      	escreva("Os cavaleiro encontraram a princesa, mas ao caminho da saida se deparam com um enorme dragão.\n")
      	u.aguarde(2500)
      	escreva("Porém isso é história para outra hora.\n")
      	u.aguarde(5000)
      	limpa()
      	escreva("FIM!\n\n\n\n\n\n\n\n\n\n")
    }
    se (rudeus_vida <= 0)
    {
      	escreva("Seu lider morreu, o restante dos guerreiros, voltaram para o reino e foram execultados.")
      	u.aguarde(6000)
      	limpa()
      	escreva("FIM!\n\n\n\n\n\n\n\n\n\n")
    }
    senao
    {
       escreva("Você descobriu um final que nem eu sabia que existia kkkkk")
       u.aguarde(3000)
       limpa()
       escreva("Tome este easter egg")
       u.aguarde(3000)
       limpa()
       escreva("\n                            ########          \n")
       escreva("                          ######  ####        \n")
       escreva("                          ######  ############\n")
       escreva("                          ##################  \n")
       escreva("                            ########          \n")
       escreva("                            ######            \n")
       escreva("                            ######            \n")
       escreva("                            ######            \n")
       escreva("                            ########          \n")
       escreva("                          ############        \n")
       escreva("                          ############        \n")
       escreva("                      ##################      \n")
       escreva("          ##############################      \n")
       escreva("        ################################      \n")
       escreva("        ################################      \n")
       escreva("          ############################        \n")
       escreva("                ####################          \n")
       escreva("                    ####                      \n")
       escreva("                    ########                  \n\n\n\n\n\n\n\n\n\n")
       u.aguarde(10000)
      }
  }

  funcao inteiro quem_bate() 
  {
    inteiro resposta
    escreva(".======================================================================.\n")
    escreva("|                             QUEM ATACA?                              |\n")
    escreva("|                                                                      |\n")
    escreva("|           1) Torfin         2) Gislaine        3)  Rudeus            |\n")
    escreva("'======================================================================'\n\n")
    escreva("Aguardando resposta: ")
    leia(resposta)
    limpa()
    retorne resposta
  }

  funcao dano_goblin(inteiro a)
  {
  	inteiro dado
  	inteiro dano
  	dado = u.sorteia(1, 10)
  	dano = goblin_dano / dado
  	escolha (a)
  	{
  		caso 1:
			torfin_vida = torfin_vida - dano
  		pare
  		caso 2:
			gislaine_vida = gislaine_vida - dano
  		pare
  		caso 3:
			rudeus_vida = rudeus_vida - dano
  		pare
  	}
  	escreva(".======================================================================.\n")
     escreva("|                Torfin            Gislaine            Rudeus\n")
     escreva("| VIDA           ", torfin_vida, "              ", gislaine_vida,"                  ", rudeus_vida,"\n")
     escreva("|======================================================================|\n")
     escreva("| GOBLIN VIDA: --------------------------------------------------- ",goblin_vida,"\n")
     escreva("| DANO REAL: ",dano,"\n")
    	escreva("'======================================================================'\n")
    	u.aguarde(3000)
    	limpa()
  }

}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 3272; 
 * @DOBRAMENTO-CODIGO = [245, 256, 263, 86, 294, 314, 308];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
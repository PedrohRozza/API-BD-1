Algoritmo "semnome"
// Disciplina   : [Linguagem e Lógica de Programação] 
// Professor   : Antonio Carlos Nicolodi 

Var
opcao_turno:inteiro
turno:caractere
  Nome: vetor[1..1000] de caractere
   Categoria: vetor[1..1000] de inteiro
   i: inteiro
   k: inteiro
   total_cadastros: inteiro

Inicio
    escreval("==== Bem Vindo! ===")
    escreval("==== Escala de Plantões ====")
    
    // ================================
    // US01 - Selecionar Turno
    // ================================
    escreval ("==== Seleção do Turno ====")
    escreval ("1 - Manhã")
    escreval ("2 - tarde")
    Escreval ("3 - Noite")
   Escreva ("Escolha o turno: ")
   Leia (opcao_turno)

   Enquanto (opcao_turno < 1) ou (opcao_turno > 3) faca

      Escreval ("")
      Escreval ("ERRO: opção de turno inválida!")
      Escreval ("Escolha uma das opções:")
      Escreval ("1 - Manhã")
      Escreval ("2 - Tarde")
      Escreval ("3 - Noite")
      Escreva ("Escolha novamente: ")
      Leia (opcao_turno)
   FimEnquanto
   
   se opcao_turno = 1 entao
   turno <- "Manhã"
   senao
   se opcao_turno = 2 entao
   turno <- "Tarde"
   senao
   turno <- "Noite"
   fimse
   fimse

   escreval("")
   escreval("Turno Selecionado:",turno)
   escreval("")

     // ================================
    // US02 - Informar a quantidade de profissionais
    // ================================
    i <- 1

   //cadastro

   escreval("=== SISTEMA DE CADASTRO DE MÉDICOS ===")
   escreval("Digite o nome do médico (ou 'sair' para encerrar):")
   leia(nome[i])
   enquanto (nome[i] <> "sair") e (i <= 1000) faca
      escreval("")
      escreval ("Escolha a categoria")
      escreval("Digite a categoria")
     escreval("1 - Pediatra")
     escreval("2 - Clínico Geral")
     escreval("3 - Cirurgião")
     escreval("Digite a categoria: ")
     leia (categoria[i])

     //se digitar categoria invalida

      enquanto (categoria[i] < 1) ou (categoria[i] > 3)faca
         escreval("Categoria inválida!")
         escreval("Categorias disponíveis: ")
     escreval("1 - Pediatra")
     escreval("2 - Clínico Geral")
     escreval("3 - Cirurgião")
     escreval("Digite novamente:")

         leia(categoria[i])
      fimenquanto

      //confirmação

      escreval("-> Cadastro de [", nome[i], "] salvo com sucesso!")
       escreval("--------------------------------------------------")
       i <- i + 1
      escreval("Digite o próximo nome (ou 'sair' para encerrar): ")
      leia(nome[i])
   fimenquanto
   total_cadastros <- i - 1

    //encerramento, total

   escreval("")
   escreval("=== PROGRAMA ENCERRADO ===")
   escreval("Total de cadastrados: ", total_cadastros)
   escreval("")

   //médicos por categoria

escreval("======================================")
escreval ("        MÉDICOS POR CATEGORIA      ")
escreval("======================================")

//Pediatras

escreval("PEDIATRAS")
para k de 1 ate total_cadastros faca
se categoria [k] = 1 entao
escreval ("-", nome[k])
fimse
fimpara
escreval ("-------------------")

 //Clínico geral

 escreval("CLíNICO GERAL")
para k de 1 ate total_cadastros faca
se categoria [k] = 2 entao
escreval ("-", nome[k])
fimse
fimpara
escreval ("-------------------")

 //Cirurgião

 escreval("CIRURGIÃO")
para k de 1 ate total_cadastros faca
se categoria [k] = 3 entao
escreval ("-", nome[k])
fimse
fimpara
escreval ("-------------------")

 //Nome do médico + categoria, meio opcional(Eu "Gui" acho), ordem de cadastro

   se total_cadastros > 0 entao
      escreval("=== LISTA DE MÉDICOS CATEGORIZADOS ===")
       para k de 1 ate total_cadastros faca
         escreval("Médico: ", nome[k], " -> Especialidade: ", categoria[k])
     se Categoria[k] = 1 entao
        escreval("Pediatra")
     senao
        se Categoria[k] = 2 entao
           escreval("Clínico Geral")
           senao
           se categoria [k] = 3 entao
           escreval ("Cirurgião")
        fimse

    fimse
      escreval("======================================")
      fimse

Fimalgoritmo
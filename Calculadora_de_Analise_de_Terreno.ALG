
Algoritmo "Terreno"

// ========================================
// DECLARACAO DE VARIAVEIS
// ========================================

Var

   // VARIAVEIS DO TERRENO A
   Largura: real
   Comprimento: real
   MetroQuadrado: real
   Area: real
   Preco: real
   Classificacao: caractere

   // VARIAVEIS DO TERRENO B
   LarguraB: real
   ComprimentoB: real
   MetroQuadradoB: real
   AreaB: real
   PrecoB: real
   ClassificacaoB: caractere

   // VARIAVEIS DE COMPARACAO
   ResultadoMetro: caractere
   ResultadoArea: caractere
   ResultadoPreco: caractere

   // VARIAVEIS DE DIFERENCA DE AREA
   DiferencaArea: real
   PercentualArea: real

   // VARIAVEIS DE ANALISE DE COMPRA
   PontosA: inteiro
   PontosB: inteiro
   ResultadoCompra: caractere

Inicio

   // ========================================
   // ENTRADA DE DADOS - TERRENO A
   // ========================================

   escreval("========================================")
   escreval("          CALCULADORA IMOBILIARIA")
   escreval("========================================")

   escreval
   escreval("============= TERRENO A =============")

   escreval("Digite a largura do Terreno A:")
   leia(Largura)

   enquanto (Largura <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(Largura)
   fimenquanto

   escreval("Digite o comprimento do Terreno A:")
   leia(Comprimento)

   enquanto (Comprimento <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(Comprimento)
   fimenquanto

   escreval("Digite o valor do metro quadrado do Terreno A:")
   leia(MetroQuadrado)

   enquanto (MetroQuadrado <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(MetroQuadrado)
   fimenquanto


   // ========================================
   // ENTRADA DE DADOS - TERRENO B
   // ========================================

   escreval
   escreval("============= TERRENO B =============")

   escreval("Digite a largura do Terreno B:")
   leia(LarguraB)

   enquanto (LarguraB <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(LarguraB)
   fimenquanto

   escreval("Digite o comprimento do Terreno B:")
   leia(ComprimentoB)

   enquanto (ComprimentoB <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(ComprimentoB)
   fimenquanto

   escreval("Digite o valor do metro quadrado do Terreno B:")
   leia(MetroQuadradoB)

   enquanto (MetroQuadradoB <= 0) faca
      escreval("Valor invalido! Digite um valor maior que zero:")
      leia(MetroQuadradoB)
   fimenquanto


   // ========================================
   // CALCULOS DOS TERRENOS
   // ========================================

   // CALCULO DO TERRENO A

   Area <- Largura * Comprimento
   Preco <- MetroQuadrado * Area

   // CALCULO DO TERRENO B

   AreaB <- LarguraB * ComprimentoB
   PrecoB <- MetroQuadradoB * AreaB


   // ========================================
   // CLASSIFICACAO AUTOMATICA
   // ========================================

   // CLASSIFICACAO DO TERRENO A

   se (Area <= 250) entao
      Classificacao <- "Pequeno"
   senao
      se (Area <= 500) entao
         Classificacao <- "Medio"
      senao
         Classificacao <- "Grande"
      fimse
   fimse

   // CLASSIFICACAO DO TERRENO B

   se (AreaB <= 250) entao
      ClassificacaoB <- "Pequeno"
   senao
      se (AreaB <= 500) entao
         ClassificacaoB <- "Medio"
      senao
         ClassificacaoB <- "Grande"
      fimse
   fimse


   // ========================================
   // COMPARACAO POR METRO QUADRADO
   // ========================================

   se (MetroQuadrado < MetroQuadradoB) entao
      ResultadoMetro <- "Terreno A possui menor preco por metro quadrado."
   senao
      se (MetroQuadrado > MetroQuadradoB) entao
         ResultadoMetro <- "Terreno B possui menor preco por metro quadrado."
      senao
         ResultadoMetro <- "Os dois terrenos possuem o mesmo preco por metro quadrado."
      fimse
   fimse


   // ========================================
   // COMPARACAO POR AREA TOTAL
   // ========================================

   se (Area > AreaB) entao
      ResultadoArea <- "Terreno A possui maior area total."
   senao
      se (Area < AreaB) entao
         ResultadoArea <- "Terreno B possui maior area total."
      senao
         ResultadoArea <- "Os dois terrenos possuem a mesma area total."
      fimse
   fimse


   // ========================================
   // COMPARACAO POR PRECO TOTAL
   // ========================================

   se (Preco < PrecoB) entao
      ResultadoPreco <- "Terreno A exige menor investimento total."
   senao
      se (Preco > PrecoB) entao
         ResultadoPreco <- "Terreno B exige menor investimento total."
      senao
         ResultadoPreco <- "Os dois terrenos possuem o mesmo preco total."
      fimse
   fimse


   // ========================================
   // DIFERENCA DE AREA E PERCENTUAL
   // ========================================

   se (Area < AreaB) entao

      DiferencaArea <- AreaB - Area
      PercentualArea <- (DiferencaArea / Area) * 100

   senao

      se (Area > AreaB) entao

         DiferencaArea <- Area - AreaB
         PercentualArea <- (DiferencaArea / AreaB) * 100

      senao

         DiferencaArea <- 0
         PercentualArea <- 0

      fimse

   fimse


   // ========================================
   // ANALISE AUTOMATICA DE COMPRA
   // ========================================

   // INICIALIZACAO DA PONTUACAO

   PontosA <- 0
   PontosB <- 0


   // CRITERIO 1: MENOR PRECO POR METRO QUADRADO

   se (MetroQuadrado < MetroQuadradoB) entao
      PontosA <- PontosA + 1
   senao
      se (MetroQuadrado > MetroQuadradoB) entao
         PontosB <- PontosB + 1
      fimse
   fimse


   // CRITERIO 2: MAIOR AREA TOTAL

   se (Area > AreaB) entao
      PontosA <- PontosA + 1
   senao
      se (Area < AreaB) entao
         PontosB <- PontosB + 1
      fimse
   fimse


   // CRITERIO 3: MENOR PRECO TOTAL

   se (Preco < PrecoB) entao
      PontosA <- PontosA + 1
   senao
      se (Preco > PrecoB) entao
         PontosB <- PontosB + 1
      fimse
   fimse


   // ========================================
   // DEFINICAO DA RECOMENDACAO
   // ========================================

   se (PontosA > PontosB) entao

      ResultadoCompra <- "TERRENO A E A MELHOR OPCAO PELOS CRITERIOS ANALISADOS."

   senao

      se (PontosB > PontosA) entao

         ResultadoCompra <- "TERRENO B E A MELHOR OPCAO PELOS CRITERIOS ANALISADOS."

      senao

         ResultadoCompra <- "EMPATE TECNICO! OS DOIS TERRENOS POSSUEM A MESMA PONTUACAO."

      fimse

   fimse


   // ========================================
   // RELATORIO DOS TERRENOS
   // ========================================

   escreval
   escreval("========================================")
   escreval("          RELATORIO DOS TERRENOS")
   escreval("========================================")

   escreval
   escreval("------------- TERRENO A -------------")
   escreval("Largura: ", Largura)
   escreval("Comprimento: ", Comprimento)
   escreval("Area: ", Area, " m2")
   escreval("Classificacao: ", Classificacao)
   escreval("Preco por metro quadrado: R$ ", MetroQuadrado)
   escreval("Preco total: R$ ", Preco)

   escreval
   escreval("------------- TERRENO B -------------")
   escreval("Largura: ", LarguraB)
   escreval("Comprimento: ", ComprimentoB)
   escreval("Area: ", AreaB, " m2")
   escreval("Classificacao: ", ClassificacaoB)
   escreval("Preco por metro quadrado: R$ ", MetroQuadradoB)
   escreval("Preco total: R$ ", PrecoB)


   // ========================================
   // RELATORIO COMPARATIVO
   // ========================================

   escreval
   escreval("========================================")
   escreval("       COMPARACAO DOS TERRENOS")
   escreval("========================================")

   escreval
   escreval("COMPARACAO POR METRO QUADRADO:")
   escreval(ResultadoMetro)

   escreval
   escreval("COMPARACAO POR AREA TOTAL:")
   escreval(ResultadoArea)

   escreval
   escreval("COMPARACAO POR PRECO TOTAL:")
   escreval(ResultadoPreco)


   // ========================================
   // RELATORIO DA DIFERENCA DE AREA
   // ========================================

   escreval
   escreval("========================================")
   escreval("       DIFERENCA ENTRE AS AREAS")
   escreval("========================================")

   escreval("Diferenca de area: ", DiferencaArea, " m2")
   escreval("Diferenca percentual: ", PercentualArea, "%")


   // ========================================
   // RESULTADO DA ANALISE DE COMPRA
   // ========================================

   escreval
   escreval("========================================")
   escreval("          ANALISE DE COMPRA")
   escreval("========================================")

   escreval
   escreval("PONTUACAO DOS TERRENOS:")
   escreval("Terreno A: ", PontosA, " ponto(s)")
   escreval("Terreno B: ", PontosB, " ponto(s)")

   escreval
   escreval("RECOMENDACAO:")
   escreval(ResultadoCompra)

   escreval
   escreval("IMPORTANTE:")
   escreval("A recomendacao considera apenas os tres criterios")
   escreval("analisados: preco por metro quadrado, area total")
   escreval("e preco total. Outros fatores nao foram considerados.")

   escreval
   escreval("========================================")
   escreval("          FIM DO RELATORIO")
   escreval("========================================")

Fimalgoritmo

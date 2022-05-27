programa {
  funcao inicio() {
         cadeia nomes [4] = {"Mariana","Janaina","Aline","Isaac"}
         real notas [4][4] = {{10.0,10.0,9.0,10.0},
                             {9.0,7.0,8.0,7.0},
                             {9.0,10.0,9.0,10.0},
                             {2.0,5.0,6.0,4.0}}
         real medias[4]
         media(notas,medias)
         inteiro aluno
         escreva("Digite o número do aluno: ")
         leia(aluno)
         limpa()
         cadeia apr
         se(aprovadx(medias[aluno])){
            apr= "APROVADX"
        }senao{
            apr= "REPROVADX" 
        }
        geraRelatorio(nomes[aluno],
        notas[aluno][0],notas[aluno][1],
        notas[aluno][2],notas[aluno][3],
        medias[aluno],apr)
    }
        funcao logico aprovadx(real nota){
        se(nota>=6){
           retorne verdadeiro
        }senao{
           retorne falso
        }
    }
        funcao media(real notas[][], real &medias[]){
        para(inteiro l=0; l<4; l++){
        real sum =0.0
        para(inteiro c = 0; c < 4; c++){
            sum += notas [l][c]
        }
        medias[l] = sum/4
        }
    }
        funcao escrevelinha(logico forte){
        se(forte){
           escreva("================","\n")
        }senao{
           escreva("================","\n")
        }
    }
        funcao geraRelatorio(cadeia nome, real b1, real b2, real b3, real b4, real avr, cadeia apr){
           escrevelinha(verdadeiro)
           escreva("Alunx: "+nome,"\n")
           escreva(falso)
           escreva("    1b : "+b1,"\n")
           escreva("    2b : "+b2,"\n")
           escreva("    3b : "+b3,"\n")
           escreva("    4b : "+b4,"\n")
           escrevelinha(falso)
           escreva(" média : "+avr,"\n")
           escreva("   "+apr,"\n")
           escrevelinha(verdadeiro)
  }
}


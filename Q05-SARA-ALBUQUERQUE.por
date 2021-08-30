programa
{
	
	funcao inicio()
	{
	cadeia nomeCategoria, nomeFormaDePgto = "", bancoDeFilmes[11] = {"Infiltrado - 120 min - R$6,00 ", "A Lenda de Candyman - 120 min - R$6,00 ", "Free Guy - Assumindo o Controle 3D - 120 min - R$6,00 ", "Free Guy - Assumindo o Controle - 120 min - R$6,00 ", "Caminhos da Memória - 120 min - R$7,50 ", "O Poderoso Chefinho 2: Negócios da Família - 150 min - R$7,50 ", "O Homem nas Trevas 2 - 150 min - R$7,50 ", "Esquadrão Suicida - 150 min - R$9,50 ", "Tempo - 180 min - R$9,50 ", "Velozes e Furiosos 9 - 180 min - R$9,50 ", "Homem Aranha - Sem Volta Para Casa - 200 min - R$15,50"}
	inteiro qtdIngresso = 5, formaDePagamento, categoria, filme, tipoDeUsuario, matricula
	real precoSemDesc = 0.0, economia = 0.0, pagamentoAtt, filmePreco[11] = {6.00, 6.00, 6.00, 6.00, 7.5, 7.5, 7.5, 9.5, 9.5, 9.5, 15.5}

	//Entrada principal
	escreva("Por favor, digite o número \n 1 - Compra de ingresso \n 2 - Administração do sistema \n")
	leia(tipoDeUsuario)

	
	//Condição para o menu inicial. Sendo um cliente, e outro administração do sistema
	se (tipoDeUsuario == 1) {


	//Entrada/tela de usuário cliente
	escreva("Qual filme você vai assistir? Digite o número do filme desejado: \n 1-" + bancoDeFilmes[0] + "\n 2-" + bancoDeFilmes[1] + "\n 3-" + bancoDeFilmes[2] + "\n 4-" + bancoDeFilmes[3] + "\n 5-" + bancoDeFilmes[4] + "\n 6-" + bancoDeFilmes[5] + "\n 7-" + bancoDeFilmes[6] + "\n 8-" + bancoDeFilmes[7] + "\n 9-" + bancoDeFilmes[8] + "\n 10-" + bancoDeFilmes[9] + "\n 11-" + bancoDeFilmes[10] + "\n")
	leia(filme)
	
	escreva("\nQuantidade de ingressos: 5 \n")

	escreva("\nTemos alguns descontos especiais! \nPor favor, digite o número referente à sua categoria.\n Digite 1 - Se você é estudante. Você receberá 50% de desconto no valor total. \n Digite 2 - Se você é Cliente Inter. Você receberá 60% de desconto no valor total.  \n Digite 3 - Inteira. \n")
	leia(categoria)

	escreva("\nQual será a forma de pagamento? \nDigite o número referente a sua forma de pagamento. Com pix você ganha 1% de desconto no valor total. \n 1 - Dinheiro \n 2 - Cartão \n 3 - Débito \n 4 - Pix \n")
	leia(formaDePagamento)
	
	//Processamento
	//Subtraindo a variavel filme por 1, para que assim corresponda aos vetores que começam com 0
	filme = (filme - 1)
	//Preço puro, sem descontos:
	precoSemDesc = filmePreco[filme]*5
	
	//Calculando os descontos por categoria
	se (categoria == 1) {
		nomeCategoria = "Estudante - 50% de desconto"
		pagamentoAtt = precoSemDesc - (precoSemDesc * 0.5)
	} senao se (categoria == 2) {
		nomeCategoria = "Cliente Inter - 60% de desconto"
		pagamentoAtt = precoSemDesc - (precoSemDesc * 0.5)
	} senao {
		nomeCategoria = "Inteira"
		pagamentoAtt = precoSemDesc
	}

	//Calculando o desconto por forma de pagamento
	se (formaDePagamento == 1) {
		nomeFormaDePgto = "Dinheiro"
	} senao se (formaDePagamento == 2) {
		nomeFormaDePgto = "Cartão"
	} senao se (formaDePagamento == 3) {
		nomeFormaDePgto = "Débito"	
	} senao se (formaDePagamento == 4) {
		nomeFormaDePgto = "Pix - 1% de desconto"
		pagamentoAtt = pagamentoAtt - (pagamentoAtt * 0.01)
	} senao {
		escreva("Opção inválida. Por favor, tente novamente.")
	}
	
	//Preço com desconto:
	economia = precoSemDesc - pagamentoAtt
	
	//Saída da tela do usuário cliente
	escreva("\nVocê vai assistir: "+ bancoDeFilmes[filme])
	escreva("\nQuantidade de ingressos: 5")
	escreva("\nVocê é da categoria: " + nomeCategoria)
	escreva("\nSua forma de pagamento escolhida: " + nomeFormaDePgto)
	escreva("\nSeu total, com desconto é: R$ " + pagamentoAtt)

	se (economia > 0.1) { escreva("\nVocê economizou: R$ " + economia) }


	//Entrada/Tela de perfil de usuário da administração do sistema: 

	} senao se (tipoDeUsuario == 2) {

	escreva("Por favor, digite a matrícula de quatro dígitos abaixo:\n")
	leia(matricula)

	//Processamento e saída da tela de usuário de administração do sistema de acordo com o número de matrícula informado:
	se (matricula >= 1000 e matricula <= 1500) {
		escreva("\nVocê está no perfil de administrador. Nesse perfil você está autorizado a: \n1-Incluir filme \n2-Alterar filme")
	} senao se (matricula >= 2000 e matricula <= 2500) {
		escreva("\nVocê está no perfil de gerente. Nesse perfil você está autorizado a alterar dados.")
	} senao se (matricula == 3000) {
		escreva("\nVocê está no perfil de funcionário.")
	} senao se (matricula == 4000) {
		escreva ("\nVocê está no perfil de estagiário.")
	} senao {
		escreva("\nNúmero inválido. Por favor, tente novamente.")
	}
	

	} senao {
		escreva("\nNúmero inválido. Por favor, tente novamente.")
	}
	
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4286; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
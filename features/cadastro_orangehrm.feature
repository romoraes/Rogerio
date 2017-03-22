#language: pt
#encode: UTF-8

Funcionalidade: Logar no site ORANGEHRM
	Eu como usuário
	Desejo cadastrar um novo empregado e editar o empregado cadastrado no site

	 Cenario: Cadastrar Empregado
	    Dado que eu esteja na home do site da ORANGEHRM
	 	E que eu esteja na tela de cadastro
	 	E efetue o cadastro com dados validos
	 	Então o cadastro efetuado com sucesso


	 Cenario: Editar Empregado Existente
	 	Dado que esteja cadastro
	 	E efetue a edição no cadastro com dados validos
	 	Então a alteração efetuada com sucesso
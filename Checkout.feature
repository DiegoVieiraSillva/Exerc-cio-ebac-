#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
quero concluir meu cadastro
para finalizar minha compra

Contexto
Dado que eu acesse a página de cadastro da Ebac-SHOP

Cenario: Autenticação válida
Quando eu digitar todos campos obrigatorios "*"
E clicar em "Finalizar compra"
Então deve exibir a mensagem de "Compra realizada com sucesso"

Cenario: Autenticação inválida
Quando eu deixar em branco o campo "Telefone"
E preencher os demais campos em "*"
Então deve exibir uma mensagem de alerta "Há campos a serem preenchidos"

Cenario: Autenticação inexistente
Quando eu digitar o endereço de e-mail "diego@@ebac.com.br"
E a os demais campos obrigatorios "*"
Então deve exibir uma mensagem de alerta "insira um e-mail válido"


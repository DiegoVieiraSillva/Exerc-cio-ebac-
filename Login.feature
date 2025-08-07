#language: pt

Funcionalidade: Tela de login
Como cliente da EBAC-SHOP
quero fazer o login na plataforma
para visualizar meus produtos

Contexto
Dado que eu acesse a página de login do EBAC-SHOP

Cenario: Autenticação válida
Quando eu digitar o usuário "diego@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de boas vindas "Bem vindo a EBAC-SHOP"

Cenario: Autenticação inválida
Quando eu digitar o usuário "diego@ebac.com.br"
E a senha "senha@478"
Então deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

Cenario: Autenticação inexistente
Quando eu digitar o usuário "dego@ebac.com.br"
E a senha "senha@123"
Então deve exibir uma mensagem de alerta "usuário inexistente"

 Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de boas vindas

            Exemplos
            | usuario             | senha       | mensagem    |
            | "carla@ebac.com.br" | "teste@123' | "Bem vindo a EBAC-SHOP" |
            | "diego@ebac.com.br" | "teste@457' | "Bem vindo a EBAC-SHOP" |
            | "pedro@ebac.com.br" | "teste@198' | "Bem vindo a EBAC-SHOP" |
            | "caio@ebac.com.br" | "teste@394' | "Bem vindo a EBAC-SHOP" |
            | "carlos@ebac.com.br" | "teste@685' | "Bem vindo a EBAC-SHOP" |
            | "sandro@ebac.com.br" | "teste@823' | "Bem vindo a EBAC-SHOP" |
            | "paulo@ebac.com.br" | "teste@925' | "Bem vindo a EBAC-SHOP" |


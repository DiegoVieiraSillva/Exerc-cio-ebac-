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
            Então deve exibir a <mensagem> de Bem vindo a EBAC-SHOP

            Exemplos
            | usuario             | senha       | mensagem    |
            | "carlos.monteiro2025@email.com" | "teste@123' | "Bem vindo a EBAC-SHOP" |
            | "contato.rapidex@outlook.com" | "teste@457' | "Bem vindo a EBAC-SHOP" |
            | "marcos.lima.dev@gmail.com" | "teste@198' | "Bem vindo a EBAC-SHOP" |
            | "caio@ebac.com.br" | "teste@394' | "Bem vindo a EBAC-SHOP" |
            | "fernanda_travels@viagemmail.com" | "teste@685' | "Bem vindo a EBAC-SHOP" |
            | "sandro@ebac.com.br" | "teste@823' | "Bem vindo a EBAC-SHOP" |
            | "ana.paula.fotografia@yahoo.com" | "teste@925' | "Bem vindo a EBAC-SHOP" |

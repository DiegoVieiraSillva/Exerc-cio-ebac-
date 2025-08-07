            #language: pt

            Funcionalidade: Configurar produtos
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            Para depois inserir no carrinho

            Contexto
            Dado que eu acesse o menu de configuração de produtos da EBAC

            Cenario: Autenticação válida
            Quando eu selecionar uma das opções obrigatorias de tamanho "XS, S, M, L, XL"
            E uma das opções obrigatorias de cor "Blue, Orange, Red"
            Então deve exibir a mensagem "Selecione a Quantidade"

            Cenario: Autenticação válida
            Quando eu selecionar a quantidade desejada "1"
            E clicar em  "Comprar"
            Então deve exiber uma mesagem "Compra realizada com sucesso"

            Cenario: Autenticação inválida
            Quando eu selecionar uma das opções obrigatorias de tamanho "XS, S, M, L, XL"
            E clicar em  "Comprar"
            Então deve exibir a mensagem "Por favor, selecione a cor desejada"

            Cenario: Autenticação inválida                      
            Quando eu selecionar todos os campos obrigatorios e a quantidade desejada "11"
            E clicar em  "Comprar"
            Então deve exiber uma mesagem "Quantidade de produto, acima do limite permitido"

            Cenario: Autenticação válida
            Quando eu selecionar os campos de tamanho e cores
            E clicar em "Limpar"
            Então deve voltar ao estado original

            


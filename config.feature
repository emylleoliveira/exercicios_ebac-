            #language: pt
 Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Ao inserir dados válidos deve ser direcionado para a tela de checkout
            Dado que estou na página de usuário do site da EBAC-SHOP
            Quando eu digitar o usuário "max123@gmail.com"
            E a senha "4patas"
            Então deve exibir uma mensagem de "Checkout feito com sucesso"

            Cenário: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta “Usuário ou senha inválidos
            Dado que estou na página de usuário do site da EBAC-SHOP
            Quando eu digitar o usuário "max456@gmail.com"
            E a senha "4patasbrancas"
            Então deve exibir uma mensagem de "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar usuários para checkout
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                 | senha       | mensagem      |
            | "beca.1@ebac.com.br"    | "sagi123"   | "Olá Rebeca!" |
            | "marcos.12@ebac.com.br" | "trtrtr123" | "Olá Marcos!" |
            | "max.125@ebac.com.br"   | "125123"    | "Olá Max!"    |
            | "Emy.89@ebac.com.br"    | "star123"   | "Olá Emylle!" |

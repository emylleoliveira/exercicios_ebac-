            #language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu preencher todos os campos obrigatórios
            E clicar no botão de envio
            Então a compra deve ser finalizada com sucesso

            
            Esquema do Cenário: Cadastrar com dados obrigatórios
            Dado que eu acesse o site da EBAC-SHOP
            Quando eu preencher o <nome>, <E-mail> e <senha> 
            E clicar no botão de finalizar pedido
            Então deve exibir a <mensagem> de finalização da compra
            Exemplos:
            | Nome*          | E-mail*         | Senha*       | Mensagem                       |
            | João da Silva  | joao@email.com  | 718292955555 | Finalização da compra          |
            | Maria Oliveira | maria@email.com | senha123     | Finalização da compra          |


            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu digitar um e-mail
            E estiver com formato inválido
            Então deve exibir uma mensagem de "e-mail inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu não preencher todos os campos de cadastro
            E deixar os espaços em branco
            Então deve exibir uma mensagem de "campos para preenchimento obrigatório"




















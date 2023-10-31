            #language: pt
            Funcionalidade: Tela de cadastro - Checkout
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu não digitar nos campos obrigatórios
            E aparecer os campos com asteriscos
            Então deve exibir uma mensagem de "Falta finalizar o cadastro"


            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu não digitar um e-mail
            E estiver com formato inválido
            Então deve exibir uma mensagem de "e-mail inválido"

            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta.
            Dado que estou na página de cadastro do site da EBAC-SHOP
            Quando eu não preencher todos os campos de cadastro
            E deixar os espaçlos em branco
            Então deve exibir uma mensagem de "campos para preenchimento obrigatório"


            Esquema do Cenário: Cadastrar com dados obrigatórios
            Quando eu digitar o <campo>
            E o <valor>
            Então deve exibir a <mensagem> de finalização da compra.

            Exemplos:
            | Campo   | Valor              |
            | Nome*   | Meu Nome           |
            | E-mail* | meuemail@email.com |
            | Senha*  | minhasenha123      |

            Esquema do Cenário: Cadastrar com e-mail inválido
            Quando eu digitar o <email>
            E a <senha>
            Então deve exibir a <mensagem> de E-mail inválido

            Exemplos:
            | E-mail*       | Senha*        |
            | emailinvalido | minhasenha123 |
















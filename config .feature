            #language: pt


            Funcionalidade: Configurar Produto

            Como cliente da EBAC-SHOP
            Eu quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Seleções obrigatórias de cor, tamanho e quantidade
            Dado que estou na página de detalhes do produto
            Quando tento adicionar o produto ao carrinho sem selecionar cor, tamanho ou quantidade
            Então devo ver uma mensagem de erro informando "Cor, tamanho e quantidade são obrigatórios"


            Cenário: Limite de 10 produtos por venda
            Dado que estou na página de detalhes do produto
            E já adicionei 10 produtos diferentes ao carrinho
            Quando tento adicionar mais um produto ao carrinho
            Então devo ver uma mensagem de erro informando "Limite de 10 produtos por venda atingido"


            Cenário: Botão "Limpar" restaura o estado original
            Dado que estou na página de detalhes do produto
            E selecionei uma cor, um tamanho e uma quantidade
            Quando clico no botão "Limpar"
            Então todas as seleções (cor, tamanho, quantidade) devem ser redefinidas para o estado original


            Esquema do Cenário: Adicionar produto com diferentes combinações de seleções
            Dado que estou na página de detalhes do produto
            Quando eu preencher a <cor>,<tamanho> e <quantidade>
            E clicar no botão de adicionar item
            Então deve aparecer a <mensagem> de produto adicionado com sucesso
            Exemplo:
            | Cor      | Tamanho | Quantidade | Mensagem                        |
            | Vermelho | P       | 2          | Produto adicionado com sucesso! |
            | Azul     | M       | 1          | Produto adicionado com sucesso! |
            | Verde    | G       | 5          | Produto adicionado com sucesso! |



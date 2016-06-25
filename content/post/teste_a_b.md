+++
date = "2016-06-20T02:08:07-03:00"
subtitle = "Fazendo (e entendendo) um teste A/B em python "
title = "Teste A B"
+++


Invariávelmente um dia você se encontrará na situação de se perguntar: "E se eu alterar isso será que terei melhor resultado?". Os chamados **testes A/B** são ferramentas estatísticas para embasar esse tipo de decisão.

Os exemplos são sempre parecidos. Uma companhia tem um site com o anúncio de seu produto. Para um grupo de pessoas 10000 exibem um determinado anúncio e para outro grupo de 200 pessoas exibe-se outro tipo de anúncio. Os números de vendas foram diferentes para as diferentes campanhas. O seu objetivo é responder se vale a pena ou não alterar o tipo de campanha de maneira a aumentar as vendas.
 
| Anúncio | n. pessoas | compradores | conversão |
| :------ |:--- | :--- | :---- |
| 1 | 10000 | 990 | 9.9% |
| 2 | 200 | 25 | 12,5% |


É claro que 12,5% é maior do que 9,9%, mas será que estes números são o suficientes para por em risco a taxa de conversão com todos os clientes e trocar o tipo de anúncio?

Vamos começar com as nomenclaturas. O conjunto de amostras já com a taxa de conversão (ou qualquer índice de sucesso) conhecidas que estabelece o controle do experimento é grupo **A**. O outro grupo com a diferença que experimentamos é o **B**.  
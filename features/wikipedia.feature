Feature: Buscar artigos na Wikipedia

    Como um visitante, quero buscar e visualizar artigos em diversos sites.

    Scenario: Buscar artigo
    Given Eu acesso a wikipedia
    When Eu busco por "Cucumber"
    Then Eu vejo o primeiro artigo encontrado
*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Test Cases ***
Verificar se quando um cmapo obrigatorio nao for preenchido corretamente o sistema exibe uma mensagem de campo obrgiatoria
    Dado que eu clcique no botão criar card
    Então sistema deve apresentar mensagem de campo obrigatório


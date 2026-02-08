*** Settings ***
Resource         ../resources/main.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Test Cases ***
Verificar se ao preencehr os cmapos do formulario corretamente os dados são enseridos na lista e se um novo cardao é criado no time esperado
    Dado que eu preencha os campos do formulario
    E clique no botao de criar card
    Entao identificar o card no time esperado

Verificar se é possivel criar mais de uma card se preenchermos os campos do formulario corretamente
    Dado que eu preencha os campos do formulario
    E clique no botao de criar card
    Então indentificar 3 cards no time esperado

Verificar se é possivel criar um card para cada time disponivel se preenchermos os campos do formulario corretamente
    Dado que eu preencha os campos do formulario
    Então criar e indentificar um card para cada time disponivel

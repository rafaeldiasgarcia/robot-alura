*** Settings ***
Library          SeleniumLibrary
Resource         setup_teardown.robot
Test Setup       Dado que eu acesse o Organo
Test Teardown    Fechar o navegador

*** Variables ***
${URL}                    
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]

*** Test Cases ***
Verificar se ao preencehr os cmapos do formulario corretamente os dados são enseridos na lista e se um novo cardao é criado no time esperado
    Dado que eu preencha os campos do formulario
    E cique no botao de criar card
    Entao identificar o card no time esperado

*** Keywords ***

Dado que eu preencha os campos do formulario
    Input Text                   ${CAMPO_NOME}           Rafael
    Input Text                   ${CAMPO_CARGO}          Desenvolvedor
    Input Text                   ${CAMPO_IMAGEM}         https://picsum.photos/200/300
    Click Element                ${CAMPO_TIME}
    Click Element                ${OPCAO_PROGRAMACAO}    

E cique no botao de criar card
    Click Element                ${BOTAO_CARD}

Entao identificar o card no time esperado
    Element Should Be Visible    class:colaborador
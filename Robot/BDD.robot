*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#criação das variáveis do teste

${Busca}                aprenda robot framework
${URL}                  https://www.youtube.com/
${Browser}              chrome

${input_pesquisar}      //input[@id="search"]   
${button_pesquisar}     //button[@id="search-icon-legacy"]
${item_lista}           (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[3]
${Prova}                //div[@id="info-container"]


*** Keywords ***
Dado que o usuário acesse o site do youtube
    Open Browser    ${URL}  ${Browser}

Quando digitar o nome de um vídeo
    Input Text      ${input_pesquisar}  ${Busca}
E clicar no botão buscar
    Click Element   ${button_pesquisar}
E clicar na primeira opção da lista
    Wait Until Element Is Visible       ${item_lista}   10
    Click Element   ${item_lista}
Então o vídeo será executado
    Wait Until Element Is Visible       ${Prova}    10
    Element Should Be Visible           ${Prova}
    Sleep  10s
    Close Browser

*** Test Cases ***
Cenário 1: Executar video no youtube
    Dado que o usuário acesse o site do youtube
    Quando digitar o nome de um vídeo
    E clicar no botão buscar
    E clicar na primeira opção da lista
    Então o vídeo será executado

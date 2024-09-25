
** Settings **
Library  SeleniumLibrary

** Variables **
${variable1}    
${variable2}

** Keywords **

Abrir Site
    Open Browser  https://automationpratice.com.br/  chrome

Fechar Site
    Close Browser
** Test Cases **
Cenário 1: Acessando o site da QAZANDO
    Abrir Site
    Fechar Site
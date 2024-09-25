*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${input_firstName}          //*[@id="firstName"]
${input_lastName}           id:lastName
${input_email}              id:userEmail
${input_mobileNumber}       id:userNumber
${input_dateOfBirth}        id:dateOfBirthInput
${input_hobbies}            id:hobbies-checkbox-3
${textarea_currentAdress}   id:currentAddress
${button_submit}            id:submit

*** Keywords ***
Abrir navegador e acessar tela do formulário
    Open Browser    https://demoqa.com/automation-practice-form     chrome
Preencher campos
    Input Text      ${input_firstName}          Rodrigo
    Sleep           1
    Input Text      ${input_lastName}           Cabral
    Input Text      ${input_email}              ro85pereira@hotmail.com
    Sleep           1
    Input Text      ${input_mobileNumber}       5511999515151    
    Input Text      ${textarea_currentAdress}   Brasil    
    Sleep           1
    Input Text      ${input_dateOfBirth}        20 sep 2020    
     
Clicar em submit
    Click Element           ${button_submit}    
    Sleep                   3    
         
Fechar navegador
    Close Browser


***Test Cases***

Cenário 1: Preencher formulário
    Abrir navegador e acessar tela do formulário
    Preencher campos
    Clicar em submit
    Fechar navegador
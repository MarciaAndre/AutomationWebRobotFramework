*** Settings ***
Documentation  Cenários de testes relacionado ao login da aplicação.
#Regras de negócio pode ser inseridas aqui
#Dado -> Pré requisito/ estado atual 
#E -> Passo complementar
#Quando -> Ação para um resultado esperado
#E -> Passo complementar
#Entao -> Resultado esperado

Resource    ../../src/config/package.resource

Test Setup    Abrir sessão
Test Teardown    Encerrar sessão

*** Test Cases **
Cenario: Login com sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de login
    Quando realizar login com sucesso
    Então deve visualizar a tela My Account
    

  
#Criar as Keywords - importar as bibliotecas (pip instal - seleniumLibrary / fake Library / Strig - cuidar com versões certas)
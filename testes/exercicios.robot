***Settings***
Documentation   Neste arquivo estarão todos exercícios de automação do curso de Robot a Prime

***Variables***
# Primeira variável do tipo dicinário

&{PESSOA}
...     nome=Cassio
...     sobrenome=Damacena
...     idade=34
...     cidade=Lorena/SP
...     profissao=QA

@{FRUTAS}   Banana  Abacaxi     Limão   Jabuticaba

***Test Cases***
Cenário: Criar email
    [Tags]          email
    ${RESULTADO}    Criar email  ${PESSOA.nome}  ${PESSOA.sobrenome}  ${PESSOA.idade}
    Log To Console  ${RESULTADO}

Cenário: Imprimindo as informações de uma PESSOA
    Log To Console      ''
    Log To Console      ${PESSOA}
    Log To Console      ${PESSOA.nome}
    Log To Console      ${PESSOA.sobrenome}
    Log To Console      ${PESSOA.idade}
    Log To Console      ${PESSOA.cidade}
    Log To Console      ${PESSOA.profissao}

Cenário: Imprimindo uma lista de FRUTAS
    [Tags]              lista
    Log To Console      ${FRUTAS}
    Log To Console      ${FRUTAS[0]}
    Log To Console      ${FRUTAS[1]}
    Log To Console      ${FRUTAS[2]}
    Log To Console      ${FRUTAS[3]}

Cenário: Somando dois números
    Somar dois números  10  15

Cenário: Somando com argumentos internos
    [Tags]              somar
    ${RESULTADO}    Somar os numeros "15" e "15"
    Log To Console      ${RESULTADO}

Cenário: Contando de 0 a 9
    [Tags]      contar
    Contar de 0 a 9

Cenário: Imprimir lista de Frutas
    [Tags]      PERCORRER
    Percorrer itens de uma lista

Cenário: Imprimir numeros de 0 a 10
    [Tags]      numeros
    Imprimindo numeros

Cenário: Imprimir número com decisão
    [Tags]      decisão
    Imprimir números com estrutura de decisão


***Keywords***
Somar dois números
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}

Somar os numeros "${num_c}" e "${num_d}"
    ${SOMA}     Evaluate    ${num_c}+${num_d}
    [Return]    ${SOMA}

Criar email
    [Arguments]     ${NOME}         ${SOBRENOME}    ${IDADE}
    ${EMAIL}        Catenate        SEPARATOR=_     ${NOME}     ${SOBRENOME}    ${IDADE}     @robot.com
    [Return]        ${EMAIL}

Contar de 0 a 9
    FOR     ${COUNT}    IN RANGE    0   9
        Log To Console  ${COUNT}
    END

Percorrer itens de uma lista
    @{FRUTAS}   Create List     morango     banana      maçã
    FOR     ${FRUTAS}   IN  ${FRUTAS}
        Log To Console      ${FRUTAS}
    END

Imprimindo numeros
    FOR     ${COUNT}    IN RANGE    0   11
        Log To Console  Estou no número ${COUNT}
    END
    
Imprimir números com estrutura de decisão
    FOR     ${COUNT}    IN RANGE    0   11
        IF  ${COUNT}==5 or ${COUNT}==7
            Log To Console  Estou no número ${COUNT}
        ELSE IF  '${COUNT}'=='8'
            Log To Console  Estou no número ${COUNT}
        END
    END
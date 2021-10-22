***Settings***
Documentation       Testes Mobile

Library             AppliumLibrary

Test Setup
Test Teardown


***Test Cases***
Caso de Teste 01: Pesquisar canal "Prime Experts"
    Dado que o cliente esteja na tela de Home
    E pesquise um vídeo sobre "Prime Experts"
    E acessar o canal da Prime
    Quando clicar em Inscreverse
    Então será apresentada como Incrito

***Keywords***
Abrir aplicativo
    Open Application        http://localhost:4723/wd/hub
    ...                     platformName=Android
    ...                     deviceName=ZF5232NS6V
    ...                     automationName=uiautomator2
    ...                     appPackage=com.google.android.youtube
    ...                     appActivity=com.google.android.youtube.HomeActivity
    ...                     autoGrantPermissions=true

Fechar aplicativo
    Capture Page Screenshot
    Close Application

Dado que o cliente esteja na tela de Home
    Wait Until Element Is Visible       xpath=//*[contains(@text, 'Início')]
    Wait Until Element Is Visible       accessibility_id=YouTube

E pesquise um vídeo sobre "Prime Experts"
    Click Element       accessibility_id=Pesquisar
    Input Text          id=search_edit_text             ${PESQUISA}
    Press keycode       66

E acessar o canal da Prime
    Wait Until Element Is Visible       accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil Prime Control há 1 ano 3 minutos e 38 segundos 73 visualizações
    Click Element                       accessibility_id=Prime Experts - Parceria entre Prime Control e UniBrasil Prime Control há 1 ano 3 minutos e 38 segundos 73 visualizações

Quando clicar em Inscreverse
    Click Element                       accessibility_id=Inscreva-se em Prime Control.

Então será apresentada como Incrito
    Wait Until Element Is Visible       accessibility_id=Cancelar insrição de Prime Control
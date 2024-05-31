Feature: Exibição do cabeçalho no Connect Eco

  Scenario: Cabeçalho é exibido ao acessar o Connect Eco
    Given que acesso o Connect Eco
    Then o cabeçalho deve ser exibido

  Scenario: A opção "Home" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Home" deve aparecer no cabeçalho

  Scenario: A opção "Sobre a Connect Eco" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Sobre a Connect Eco" deve aparecer no cabeçalho
    But o texto está incorreto, deve ser "Sobre a Connect Eco"

  Scenario: A opção "Blog" aparece no cabeçalho
    Given que o cabeçalho está exibido
    Then a opção "Blog" deve aparecer no cabeçalho

  Scenario: Texto da opção selecionada está na cor verde-escuro
    Given que uma opção do cabeçalho está selecionada
    Then o texto da opção selecionada deve estar na cor verde-escuro

  Scenario: Texto das demais opções está na cor cinza
    Given que o cabeçalho está exibido
    Then o texto das opções não selecionadas deve estar na cor cinza

  Scenario: Botão "Faça parte" é exibido corretamente
    Given que o cabeçalho está exibido
    Then o botão "Faça parte" deve ser exibido com fundo verde e texto branco

  Scenario: Localização atual é exibida corretamente
    Given que o cabeçalho está exibido
    Then a localização atual deve ser exibida com fundo verde-escuro e texto em verde-claro no canto superior direito

  Scenario: Pop-up de endereço é exibido ao clicar na localização atual
    Given que a localização atual está exibida
    When clico na localização atual
    Then o pop-up de endereço deve ser exibido
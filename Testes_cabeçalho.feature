Feature: Exibição do cabeçalho no Connect Eco

  Scenario: Cabeçalho é exibido ao acessar o Connect Eco PASSED
    Given que acesso o Connect Eco
    Then o cabeçalho deve ser exibido

  Scenario: A opção "Home" é clicável e leva para página principal PASSED
    Given que o cabeçalho está exibido
    Then a opção "Home" deve aparecer no cabeçalho
    When clicar na opção "Home"
    Then deve carregar a tela de "Home'

  Scenario: A opção "Sobre a Connect Eco" aparece no cabeçalho PASSED
    Given que o cabeçalho está exibido
    Then a opção "Sobre a Connect Eco" deve aparecer no cabeçalho
	When clicar na opção "Sobre a Connect Eco"
    Then deve carregar a tela de "Sobre a Connect Eco"

  Scenario: A opção "Blog" aparece no cabeçalho PASSED
    Given que o cabeçalho está exibido
    Then a opção "Blog" deve aparecer no cabeçalho
	When clicar na opção "Blog"
    Then deve carregar a tela de "Blog"
	
  Scenario: Texto da opção selecionada fica destacado
    Given que uma opção do cabeçalho está selecionada
    Then o texto da opção selecionada deve estar em destaque

  Scenario: Botão "Faça parte"  é clicável
    Given que o cabeçalho está exibido
	Then a opção "Faça parte" deve aparecer no cabeçalho
    When clicar na opção "Faça parte"
    Then deve carregar a tela de "Faça parte"
	
  Scenario: Localização atual é exibida corretamente
    Given que o cabeçalho está exibido
	And uma localização foi selecionado
    Then a localização atual deve ser exibida no cabeçalho

  Scenario: Pop-up de endereço é exibido ao clicar na localização atual
    Given que a localização atual está exibida
    When clico na localização atual
    Then o pop-up de endereço deve ser exibido

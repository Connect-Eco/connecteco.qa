Feature: Página "Sobre a Connect Eco"

  Scenario: Exibição dos textos na página "Sobre a Connect Eco"
      Given que estou na página "Sobre a Connect Eco"
       Then os textos "Missão", "Visão", "Valores" e "Como nasceu" devem ser exibidos
       
    Scenario: Exibição dos integrantes na página "Sobre a Connect Eco"
       Given estou abaixo dos textos "Missão", "Visão", "Valores" e "Como nasceu"
        Then observa-se carrossel com informaçòes de cada membro
        Then sob as informações dois botões verde escuro com texto branco clicáveis "LinkedIn" "GitHub" respectivamente 

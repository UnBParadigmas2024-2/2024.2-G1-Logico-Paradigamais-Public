pressione_para_continuar :-
    write('Pressione 1. para continuar...'), nl,
    read(Opcao2).

/* Tela inicial */
tela_inicial :-
    write(''), nl,
    write('=============================='), nl,
    write('Bem-vindo ao Jogo Cidade Dorme!'), nl,
    write('=============================='), nl,
    write('Escolha uma das opcoes abaixo:'), nl,
    write('1. Ver Regras'), nl,
    write('2. Jogar'), nl,
    write('3. Sair'), nl,
    write('Digite sua escolha (1, 2 ou 3) + . : '),
    read(Opcao),
    processar_opcao(Opcao).

/* Processar Opcao */
processar_opcao(1) :- mostrar_regras, tela_inicial.
processar_opcao(2) :- iniciar_jogo.
processar_opcao(3) :- write('Obrigado por jogar! Ate a proxima!'), nl.
processar_opcao(_) :-
    write('Opcao invalida. Tente novamente.'), nl,
    tela_inicial.
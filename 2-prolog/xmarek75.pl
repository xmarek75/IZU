% Zadání è. 1:
% Napište program øešící úkol danı predikátem u1(LIN,VOUT), kde LIN je vstupní 
% celoèíselnı seznam a VOUT je vıstupní promìnná, ve které se vrací délka
% seznamu LIN bez zapoèítání nulovıch èísel.

% Testovací predikáty:                                          % VOUT
u1_1:- u1([5,-20,0,16,0,23,-4],VOUT),write(VOUT).		% 5
u1_2:- u1([0,1,2],VOUT),write(VOUT).                            % 2
u1_3:- u1([0,0,0],VOUT),write(VOUT).                            % 0
u1_r:- write('Zadej LIN: '),read(LIN),u1(LIN,VOUT),write(VOUT).

%u1(LIN,VOUT):- 
u1([],0).
u1([H|Tail], N) :-
    u1(Tail, N1),
    (  H\==0
    -> N is N1 + 1
    ;  N = N1
    ).
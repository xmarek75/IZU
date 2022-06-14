% Zad�n� �. 1:
% Napi�te program �e��c� �kol dan� predik�tem u1(LIN,VOUT), kde LIN je vstupn� 
% celo��seln� seznam a VOUT je v�stupn� prom�nn�, ve kter� se vrac� d�lka
% seznamu LIN bez zapo��t�n� nulov�ch ��sel.

% Testovac� predik�ty:                                          % VOUT
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
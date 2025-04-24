
% --- Предикат: сын X является сыном Y ---
son(X, Y) :- man(X), parent(Y, X).

% --- Предикат: вывести всех сыновей X ---
son(X) :-parent(X, Y), man(Y), write(Y), nl, fail.
son(_).

% --- Предикат: X является сестрой Y ---
sister(X, Y) :-woman(X), parent(P, X), parent(P, Y), X \= Y.

% --- Предикат: вывести всех сестер X ---
sisters(X) :-sister(Sis, X), write(Sis), nl, fail.
sisters(_).
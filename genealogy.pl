grand_da(X, Y) :-woman(X), parent(Y, Z), parent(Z, X).

% Предикат для вывода всех внучек X
grand_dats(X) :-grand_da(Y, X), write(Y), nl, fail.
grand_dats(_).

% Предикат для проверки, являются ли X и Y бабушкой и внуком или наоборот
grand_ma_and_son(X, Y) :-woman(X), man(Y), parent(X, Z), parent(Z, Y).

grand_ma_and_son(X, Y) :-woman(Y), man(X), parent(Y, Z), parent(Z, X).

% Предикат для проверки, является ли X племянником Y
nephew(X, Y) :-parent(Z, X), parent(W, Z), sibling(W, Y).

% Предикат для проверки, являются ли X и Y братьями/сестрами
sibling(X, Y) :-parent(Z, X), parent(Z, Y), X \= Y.

% Предикат для вывода всех племянников X
all_nephews(X) :-nephew(Y, X), write(Y), nl, fail.
all_nephews(_).

%consult("Russian_family_tree").

man(voeneg).
man(voe).
man(ratibor).
man(boguslav).
man(velerad).
man(duhovlad).
man(svyatoslav).
man(dobrozhir).
man(bogomil).
man(zlatomir).

woman(goluba).
woman(lubomila).
woman(bratislava).
woman(veslava).
woman(zhdana).
woman(bozhedara).
woman(broneslava).
woman(veselina).
woman(zdislava).
woman(grand_goluba).
woman(grand_voen).

parent(grand_voen,voeneg).
parent(grand_goluba,goluba).

parent(voeneg,ratibor).
parent(voeneg,bratislava).
parent(voeneg,velerad).
parent(voeneg,zhdana).

parent(goluba,ratibor).
parent(goluba,bratislava).
parent(goluba,velerad).
parent(goluba,zhdana).

parent(ratibor,svyatoslav).
parent(ratibor,dobrozhir).
parent(lubomila,svyatoslav).
parent(lubomila,dobrozhir).

parent(boguslav,bogomil).
parent(boguslav,bozhedara).
parent(bratislava,bogomil).
parent(bratislava,bozhedara).

parent(velerad,broneslava).
parent(velerad,veselina).
parent(veslava,broneslava).
parent(veslava,veselina).

parent(duhovlad,zdislava).
parent(duhovlad,zlatomir).
parent(zhdana,zdislava).
parent(zhdana,zlatomir).

men():- man(X), print(X), nl, fail.
women():- woman(X), print(X), nl, fail.
children(X):- parent(X,Y), print(Y), nl, fail.

mother(X,Y):- woman(X), parent(X,Y).
mother(X):- mother(Y,X), print(Y), nl, fail.

brother(X,Y):- man(X), parent(Z,X), parent(Z, Y), man(Z).
brother(X):- brother(X, Y), X\=Y, print(Y), nl, fail. 

b_s(X,Y):- man(X), woman(Y), parent(Z,X), parent(Z, Y), man(Z).
b_s(X):- b_s(X, Y), X\=Y, print(Y), nl, fail. 

daughter(X, Y):- woman(X), parent(Y, X).
daughter(X):- daughter(Y, X), print(Y), nl, fail.

husband(X, Y):- man(X), woman(Y), parent(X, Z), parent(Y, Z).
husband(X):- husband(Y, X), print(Y), nl, !, fail.

grand_ma(X, Y):- woman(X), parent(X,Z), parent(Z,Y).
grand_mas(X):- grand_ma(Y, X), print(Y), nl, fail.

grand_ma_and_da(X,Y):- woman(X), woman(Y), parent(X,Z), parent(Z,Y).
grand_ma_and_da(Y,X):- woman(X), woman(Y), parent(X,Z), parent(Z,Y).

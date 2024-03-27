/*
consult("Russian_family_tree").
*/

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

%Task 1

/*
men() is failure
Print all men
*/
men():- man(X), print(X), nl, fail.

/*
women() is failure
Print all women
*/
women():- woman(X), print(X), nl, fail.

/*
children(+X) is failure
Print all childrens of X
*/
children(X):- parent(X,Y), print(Y), nl, fail.

/*
mother(?X,?Y) is det
True, if X is mother of Y
If X or Y missing, find X or Y
*/
mother(X,Y):- woman(X), parent(X,Y).

/*
mother(+X) is failure
Print mother of X
*/
mother(X):- mother(Y,X), print(Y), nl, fail.

/*
brother(?X,?Y) is det
True, if X is brother of Y
If X or Y missing, find X or Y
*/
brother(X,Y):- man(X), parent(Z,X), parent(Z, Y), man(Z).

/*
brother(+X) is failure
Print all brothers of X
*/
brother(X):- brother(X, Y), X\=Y, print(Y), nl, fail. 

/*
b_s(?X,?Y) is det
True, if X is brother of sister Y
If X or Y missing, find X or Y
*/
b_s(X,Y):- man(X), woman(Y), parent(Z,X), parent(Z, Y), man(Z).

/*
b_s(+X) is failure
Print all sisters of brother X
*/
b_s(X):- b_s(X, Y), X\=Y, print(Y), nl, fail. 

/*
daughter(?X,?Y) is det
True, if X is daughter of Y
If X or Y missing, find X or Y
*/
daughter(X, Y):- woman(X), parent(Y, X).

/*
daughter(+X) is failure
Print all daughter of X
*/
daughter(X):- daughter(Y, X), print(Y), nl, fail.

/*
husband(?X,?Y) is det
True, if X is husband of Y
If X or Y missing, find X or Y
*/
husband(X, Y):- man(X), woman(Y), parent(X, Z), parent(Y, Z).

/*
husband(+X) is failure
Print husband of X
*/
husband(X):- husband(Y, X), print(Y), nl, !, fail.

/*
grand_ma(?X,?Y) is det
True, if X is grand_ma of Y
If X or Y missing, find X or Y
*/
grand_ma(X, Y):- woman(X), parent(X,Z), parent(Z,Y).

/*
grand_mas(+X) is failure
Print all grand_mas of X
*/
grand_mas(X):- grand_ma(Y, X), print(Y), nl, fail.

/*
grand_ma_and_da(?X,?Y) is det
True, if (X is grand_ma of Y) or (X is grand_da of Y)
If X or Y missing, find X or Y
*/
grand_ma_and_da(X,Y):- woman(X), woman(Y), parent(X,Z), parent(Z,Y).
grand_ma_and_da(Y,X):- woman(X), woman(Y), parent(X,Z), parent(Z,Y).

/*
aunt(?X,?Y) is det
True, if X is aunt of Y
If X or Y missing, find X or Y
*/
aunt(X,Y):- woman(X), parent(P,X), parent(P,Z), parent(Z, Y), man(P).

/*
aunts(+X) is failure
Print all aunts of X
*/
aunts(X):- aunt(Y,X), print(Y), nl, fail.
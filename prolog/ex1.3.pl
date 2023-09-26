parent("Alexandr","Olya").
parent("Masha","Olya").
parent("Alexandr","Alina").
parent("Masha","Alina").
parent("Alexandr","Leha").
parent("Masha","Leha").
parent("Leha","Gleb").
parent("Dasha","Gleb").
parent("Alina","Maks").
parent("Leha","Maks").

man("Alexandr").
man("Leha").
man("Pavel").
man("Dima").

woman("Olya").
woman("Alina").
woman("Masha").



father(X,Y):-
  parent(X,Y),man(X).

mother(X,Y):-
  parent(X,Y),woman(X).

sister(X,Y):-
  parent(Z,X), parent(Z,Y), woman(X), X\=Y.


%son(X,Y):-
%  parent(Y,X),man(X).



%дедушка и общие родители

%?-father(X,"Olya"),write(X),write(" ").
%?-mother(X,"Alina"),write(X),write(" ").
%?-married("Alina","Dima"),write(" ").
%?-husband("Masha",Y),write(Y),write(" ").
%?-wife(X,"Pavel"),write(X),write(" ").
%?-sister("Olya","Alina"),write(" ").
%?-brother_in_law(X,"Dima"),write(X),write(" ").
%?-mother_in_law(X,"Dima"),write(X),write(" ").
%?-uncle(X,"Maks"),write(X),write(" ").
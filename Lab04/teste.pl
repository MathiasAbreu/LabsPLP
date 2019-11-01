
factorial(0,1).
factorial(X,Retorno) :-
  X > 0,
  X1 is X - 1,
  factorial(X1,Retorno1),
  Retorno is X * Retorno1.

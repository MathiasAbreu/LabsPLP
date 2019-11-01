:- initialization main.

sub_inversa(0, SubParcial, Retorno) :-
  Retorno is SubParcial.
sub_inversa(Cont, SubParcial, Retorno) :-
  (Cont == 1), read(Num), SubParcial2 is SubParcial + Num, NewCont is Cont - 1, sub_inversa(NewCont, SubParcial2, Retorno);
  read(Num), SubParcial2 is SubParcial - Num, NewCont is Cont - 1, sub_inversa(NewCont, SubParcial2, Retorno).
main :-
  read(QuantidadeNumeros),
  sub_inversa(QuantidadeNumeros, 0, Retorno),
  writeln(Retorno),
  halt(0).

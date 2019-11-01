:- initialization(main).

retornaPagamento(_,_,0,TotalRetorno) :- TotalRetorno is 0.
retornaPagamento(ValorProduto,Juros,TempoPagar,TotalRetorno) :-
  TempoPagar > 0,
  TempoRestante is TempoPagar - 1,
  PagCJuros is ValorProduto * Juros,
  Parcela is ValorProduto + PagCJuros,
  retornaPagamento(Parcela,Juros,TempoRestante,TotalRetornoR),
  TotalRetorno is PagCJuros + TotalRetornoR.

verificaRetorno(ValorTotal,ValorPretende,Retorno) :-
  (ValorTotal < ValorPretende -> Retorno = "Compra";
  Retorno = "Nao compra").

  main :-
    read(ValorProduto),
    read(Juros),
    read(TempoPagar),
    read(PretendePagar),
    retornaPagamento(ValorProduto,Juros,TempoPagar,TotalRetorno),
    verificaRetorno(TotalRetorno,PretendePagar,Retorno),
    writeln(Retorno).

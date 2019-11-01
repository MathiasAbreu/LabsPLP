:- initialization main.

loja_jogo(Saldo) :-
  (Saldo =< -50.0),
  writeln("divida muito alta"),
  NewSaldo is Saldo * -1.0,
  number_string(NewSaldo, StrSaldo),
  string_concat("devendo: R$", StrSaldo, Result),
  writeln(Result).
loja_jogo(Saldo) :-
  read(Entrada),
  ( (Entrada == guitar_hero_3),
      NewSaldo is Saldo - 10,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == black),
      NewSaldo is Saldo - 15,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == gta_san_andreas),
      NewSaldo is Saldo - 20,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == need_for_speed),
      NewSaldo is Saldo - 12,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == god_of_war_2),
      NewSaldo is Saldo - 15,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == bomba_patch),
      NewSaldo is Saldo - 7,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == resident_evil_4),
      NewSaldo is Saldo - 14,
      number_string(NewSaldo, StrSaldo),
      string_concat("saldo atual: R$", StrSaldo, Result),
      writeln(Result),
      loja_jogo(NewSaldo);
    (Entrada == fim),
      ((Saldo > 0), number_string(Saldo, StrSaldo), string_concat("troco: R$", StrSaldo, Result), writeln(Result);
      (Saldo == 0.0), writeln("nao tem troco");
      (Saldo < 0), NewSaldo is Saldo * -1, number_string(NewSaldo, StrSaldo), string_concat("devendo: R$", StrSaldo, Result), writeln(Result)) ).
main :-
  read(Saldo),
  NewSaldo is Saldo * 1.0,
  loja_jogo(NewSaldo),
  halt(0).

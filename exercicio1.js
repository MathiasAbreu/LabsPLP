function create_turma(disciplina, vagas) {

  let turma = {};

  turma.disciplina = disciplina;
  turma.vagasDisponiveis = vagas;

  turma.arrayAlunos = [];
  turma.matricule = function(nomeAluno) {

    if (turma.vagasDisponiveis - turma.arrayAlunos.length > 0) {

      turma.arrayAlunos.push(nomeAluno);
      return true;
    }
    else {
      return false;
    }
  };

  turma.alunos = function() {
    return turma.arrayAlunos;
  };

  turma.vagas = function() {

    return turma.vagasDisponiveis - turma.arrayAlunos.length;
  };

  return turma;
}

turma = create_turma("PSOFT", 5);
console.log(turma);

turma.matricule("Klaywert");
turma.matricule("Mathias");
turma.matricule("Caio");

console.log("Vagas Disponiveis: " + turma.vagas());

console.log(turma);
